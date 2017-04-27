#include "GetLandmarks.h"
#include "ExtractLBP.h"
#include <fstream>

void LandmarkLBP(IplImage* face_src, float* lbp, int scale, int cell_num_steps){

  double* landmarks = GetLandmarks(face_src);
  int i, j, pos=0;
  double dist;
  float *lbp_left_eye, *lbp_right_eye, *lbp_nose, *lbp_mouth;
  IplImage* face_landmark_patch;
  IplImage* face_src_gray;
  face_src_gray = cvCreateImage( cvSize(face_src->width, face_src->height), face_src->depth, 1);
  cvCvtColor(face_src, face_src_gray, CV_BGR2GRAY);

  // left eyes
  dist = landmarks[2] - landmarks[10];
  face_landmark_patch = cvCreateImage(cvSize(int(dist*5/3), int(dist*3)), IPL_DEPTH_8U, 1);
  cvSetImageROI(face_src_gray, cvRect(MAX(0, landmarks[10]-dist/3),
                                      MAX(0, landmarks[3]-dist*2),
                                      int(dist*5/3), int(dist*3)));
  cvCopy(face_src_gray, face_landmark_patch, NULL);
  cvResetImageROI(face_src_gray);
  lbp_left_eye = (float*)malloc(sizeof(float)*scale*cell_num_steps*cell_num_steps*59);
  memset(lbp_left_eye, 0, sizeof(float)*scale*cell_num_steps*cell_num_steps*59);
  MultiScaleLBP(face_landmark_patch, lbp_left_eye, scale, cell_num_steps);
  cvReleaseImage(&face_landmark_patch);
  for (i = 0; i < scale*cell_num_steps*cell_num_steps*59; i++) {
    lbp[pos++] = lbp_left_eye[i];
  }
  free(lbp_left_eye);  // release


  //right eye
  dist = landmarks[12] - landmarks[4];
  face_landmark_patch = cvCreateImage(cvSize(int(dist*5/3), int(dist*3)), IPL_DEPTH_8U, 1);
  cvSetImageROI(face_src_gray, cvRect(MIN(landmarks[4]-dist/3, face_src_gray->width-dist*5/3),
                                      MAX(0, landmarks[5]-dist*2),
                                      int(dist*5/3), int(dist*3)));
  cvCopy(face_src_gray, face_landmark_patch, NULL);
  cvResetImageROI(face_src_gray);
  lbp_right_eye = (float*)malloc(sizeof(float)*scale*cell_num_steps*cell_num_steps*59);
  memset(lbp_right_eye, 0, sizeof(float)*scale*cell_num_steps*cell_num_steps*59);
  MultiScaleLBP(face_landmark_patch, lbp_right_eye, scale, cell_num_steps);
  cvReleaseImage(&face_landmark_patch);
  for (i = 0; i < scale*cell_num_steps*cell_num_steps*59; i++) {
    lbp[pos++] = lbp_right_eye[i];
  }
  free(lbp_right_eye);  // release

  // nose
  face_landmark_patch = cvCreateImage(cvSize(int(dist*2), int(dist)), IPL_DEPTH_8U, 1);
  cvSetImageROI(face_src_gray, cvRect(landmarks[14]-dist, landmarks[15], int(dist*2), int(dist)));
  cvCopy(face_src_gray, face_landmark_patch, NULL);
  cvResetImageROI(face_src_gray);
  lbp_nose = (float*)malloc(sizeof(float)*scale*cell_num_steps*cell_num_steps*59);
  memset(lbp_nose, 0, sizeof(float)*scale*cell_num_steps*cell_num_steps*59);
  MultiScaleLBP(face_landmark_patch, lbp_nose, scale, cell_num_steps);
  cvReleaseImage(&face_landmark_patch);
  for (i = 0; i < scale*cell_num_steps*cell_num_steps*59; i++) {
    lbp[pos++] = lbp_nose[i];
  }
  free(lbp_nose);  // release

  // mouth
  dist = landmarks[8] - landmarks[6];
  face_landmark_patch = cvCreateImage(cvSize(int(landmarks[4] - landmarks[10]), int(dist*1.5)), IPL_DEPTH_8U, 1);
  cvSetImageROI(face_src_gray, cvRect(int((landmarks[2] + landmarks[10])/2),
                                      int((landmarks[7] + landmarks[15])/2),
                                      int(landmarks[4] - landmarks[10]), int(dist*1.5)));
  cvCopy(face_src_gray, face_landmark_patch, NULL);
  cvResetImageROI(face_src_gray);
  lbp_mouth = (float*)malloc(sizeof(float)*scale*cell_num_steps*cell_num_steps*59);
  memset(lbp_mouth, 0, sizeof(float)*scale*cell_num_steps*cell_num_steps*59);
  MultiScaleLBP(face_landmark_patch, lbp_mouth, scale, cell_num_steps);
  cvReleaseImage(&face_landmark_patch);
  for (i = 0; i < scale*cell_num_steps*cell_num_steps*59; i++) {
    lbp[pos++] = lbp_mouth[i];
  }
  free(lbp_mouth);  // release

  // release
  free(landmarks);
  cvReleaseImage(&face_src_gray);
}

int main(int argc, const char *argv[])
{
  int i, scale, cell_num_steps;

  /***** origin inout *****/
//  scale = atoi(argv[1]);
//  cell_num_steps = atoi(argv[2]);

  scale = 1;
  cell_num_steps = 3;

  IplImage* src = cvLoadImage("../images/anne-hathaway.jpg");
  float* lbp;
  lbp = (float*)malloc(sizeof(float)*scale*cell_num_steps*cell_num_steps*4*59);
  memset(lbp, 0, sizeof(float)*scale*cell_num_steps*cell_num_steps*4*59);
  
  // Extracts LBP over landmarks!
  LandmarkLBP(src, lbp, scale, cell_num_steps);

  for (i = 0; i < scale*cell_num_steps*cell_num_steps*4*59; i++) {
    printf("%4f ", lbp[i]);
    if((i+1)%59 == 0)
      printf("\n");
  }
  printf("The total dimension of features: %d\n", i);

    {
        using namespace std;
        ofstream myfile;
        myfile.open ("LBP_feature.txt");
        for (i = 0; i < scale*cell_num_steps*cell_num_steps*4*59; i++) {
            myfile<<lbp[i]<<"\n";
        }
        myfile.close();
        cout<<"save file complete\n";
    }

  // release
  free(lbp);
  cvReleaseImage(&src);
  
  return 0;
}
