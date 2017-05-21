#include "pxcsensemanager.h"
#include <iostream>
#include <opencv.hpp>


using namespace std;
using namespace cv;

#define DEBUG_LOG

void ConvertPXCImageToOpenCVMat(PXCImage *inImg, Mat *outImg) {
	int cvDataType;
	int cvDataWidth;


	PXCImage::ImageData data;
	inImg->AcquireAccess(PXCImage::ACCESS_READ, &data);
	PXCImage::ImageInfo imgInfo = inImg->QueryInfo();

	switch (data.format) {
		/* STREAM_TYPE_COLOR */
	case PXCImage::PIXEL_FORMAT_YUY2: /* YUY2 image  */
#ifdef DEBUG_LOG
		cout << "PXCImage Format not supported:PIXEL_FORMAT_YUY2" << endl;
#endif
		throw(0); // Not implemented
	case PXCImage::PIXEL_FORMAT_NV12: /* NV12 image */

#ifdef DEBUG_LOG
		cout << "PXCImage Format not supported:PIXEL_FORMAT_NV12" << endl;
#endif
		throw(0); // Not implemented
	case PXCImage::PIXEL_FORMAT_RGB32: /* BGRA layout on a little-endian machine */
		cvDataType = CV_8UC4;
		cvDataWidth = 4;
		break;
	case PXCImage::PIXEL_FORMAT_RGB24: /* BGR layout on a little-endian machine */
		cvDataType = CV_8UC3;
		cvDataWidth = 3;
		break;
	case PXCImage::PIXEL_FORMAT_Y8:  /* 8-Bit Gray Image, or IR 8-bit */
		cvDataType = CV_8U;
		cvDataWidth = 1;
		break;

		/* STREAM_TYPE_DEPTH */
	case PXCImage::PIXEL_FORMAT_DEPTH: /* 16-bit unsigned integer with precision mm. */
	case PXCImage::PIXEL_FORMAT_DEPTH_RAW: /* 16-bit unsigned integer with device specific precision (call device->QueryDepthUnit()) */
		cvDataType = CV_16U;
		cvDataWidth = 2;
		break;
	case PXCImage::PIXEL_FORMAT_DEPTH_F32: /* 32-bit float-point with precision mm. */
		cvDataType = CV_32F;
		cvDataWidth = 4;
		break;

		/* STREAM_TYPE_IR */
	case PXCImage::PIXEL_FORMAT_Y16:          /* 16-Bit Gray Image */
		cvDataType = CV_16U;
		cvDataWidth = 2;
		break;
	case PXCImage::PIXEL_FORMAT_Y8_IR_RELATIVE:    /* Relative IR Image */
		cvDataType = CV_8U;
		cvDataWidth = 1;
		break;
	}

#ifdef DEBUG_LOG
	cout << "after switch" << endl;
#endif


	// suppose that no other planes
	if (data.planes[1] != NULL) throw(0); // not implemented
										  // suppose that no sub pixel padding needed
	if (data.pitches[0] % cvDataWidth != 0) throw(0); // not implemented

	outImg->create(imgInfo.height, data.pitches[0] / cvDataWidth, cvDataType);

	memcpy(outImg->data, data.planes[0], imgInfo.height*imgInfo.width*cvDataWidth * sizeof(pxcBYTE));

	inImg->ReleaseAccess(&data);
}

// Convert PXCImage to opencv Mat (YUY2 format)
void RSSDKConvert(wchar_t* filename)
{
	PXCSenseManager *sm = PXCSenseManager::CreateInstance();

#ifdef DEBUG_LOG
	cout << "enter RSSDKConvert" << endl;
#endif

	// Set file playback name
	sm->QueryCaptureManager()->SetFileName(filename, false);

	// Enable stream and Initialize
	sm->EnableStream(PXCCapture::STREAM_TYPE_COLOR);
	sm->EnableStream(PXCCapture::STREAM_TYPE_DEPTH, 0, 0);
	sm->Init();

#ifdef DEBUG_LOG
	cout << "enter Init"<<filename << endl;
#endif

	PXCImage *colorIm, *depthIm;
	PXCImage::ImageData depth_data;
	PXCImage::ImageData color_data;
	PXCImage::ImageInfo depth_information;
	PXCImage::ImageInfo color_information;

	Mat img = Mat(480, 640, CV_8UC1);

	// Set realtime=true and pause=false
	sm->QueryCaptureManager()->SetRealtime(false);
	sm->QueryCaptureManager()->SetPause(true);

	int nframes = sm->QueryCaptureManager()->QueryNumberOfFrames();

#ifdef DEBUG_LOG
	cout << "nframes:\t" <<nframes<< endl;
#endif

	// Streaming loop
	for (int i = 0; i < nframes; i += 20) {

		// Set to work on every 3rd frame of data
		sm->QueryCaptureManager()->SetFrameByIndex(i);
		sm->FlushFrame();

		// Ready for the frame to be ready
		pxcStatus sts = sm->AcquireFrame(true);
		if (sts < PXC_STATUS_NO_ERROR) break;

		// Retrieve the sample and work on it. The image is in sample->color.
		PXCCapture::Sample* sample = sm->QuerySample();
		
		colorIm = sample->color;
		depthIm = sample->depth;

		colorIm->AcquireAccess(PXCImage::ACCESS_READ, PXCImage::PIXEL_FORMAT_RGB24, &color_data);
		depthIm->AcquireAccess(PXCImage::ACCESS_READ, &depth_data);
		depth_information = sample->depth->QueryInfo();
		color_information = sample->color->QueryInfo();

		ushort *dpixels = (ushort*)depth_data.planes[0];
		for (int y = 0; y < depth_information.height; y++)
			for (int x = 0; x < depth_information.width; x++)
			{
				uchar d = dpixels[y * depth_information.width + x];
				img.at<uchar>(y, x) = min((int)((double)d / 600 * 255), 255);
			}
		Mat color_img = Mat(color_information.height, color_information.width, CV_8UC3);
		uchar * dp = (uchar*)color_data.planes[0];
		int cnt = 0;
		for (int y = 0; y < color_information.height; y++)
			for (int x = 0; x < color_information.width; x++)
			{
				color_img.at<Vec3b>(y, x)[0] = dp[cnt++];
				color_img.at<Vec3b>(y, x)[1] = dp[cnt++];
				color_img.at<Vec3b>(y, x)[2] = dp[cnt++];
			}
		//namedWindow("a", 0);

		imwrite("color_" + to_string(i) + ".jpg", color_img);

		//imwrite("100.jpg", img);
		depthIm->ReleaseAccess(&depth_data);
		colorIm->ReleaseAccess(&color_data);

		//if (!renderColor->RenderFrame(sample->color)) break;
		//if (!renderDepth->RenderFrame(sample->depth)) break;

		sm->ReleaseFrame();
		imwrite("depth_" + to_string(i) + ".jpg", img);


		//Mat colorMat, depthMat;
		//ConvertPXCImageToOpenCVMat(sample->color, &colorMat);
		//ConvertPXCImageToOpenCVMat(sample->depth, &depthMat);

		//imwrite("color_" + to_string(i) + "jpg", colorMat);
		//imwrite("depth_" + to_string(i) + "jpg", depthMat);

		// Resume processing the next frame
		sm->ReleaseFrame();
	}

	// Clean up
	sm->Release();
}

wchar_t *GetWC(const char *text_char)
{
	size_t length = strlen(text_char);
	wchar_t text_wchar[30];

	mbstowcs_s(&length, text_wchar, text_char, length);
	return text_wchar;
}

int main()
{
	RSSDKConvert(L"F:\\record_handy\\record.rssdk");
	system("pause");
	return 0;
}