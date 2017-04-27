#ifndef _GET_LANDMARKS_
#define _GET_LANDMARKS_

#include <opencv/cv.h>
#include <opencv/cvaux.h>
#include <opencv/highgui.h>

#include <stdlib.h>
#include "lib/flandmark_detector.h"

double* GetLandmarks(IplImage *orig);

#endif
