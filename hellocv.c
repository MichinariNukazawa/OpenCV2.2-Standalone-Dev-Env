/*
下記ソースは以下のURLより引用。
http://opencv.jp/sample/video_io.html#capture
*/

#include <cv.h>
#include <highgui.h>
#include <ctype.h>
#include <stdio.h>

int
main (int argc, char **argv)
{
  CvCapture *capture = 0;
  IplImage *frame = 0;
  double w = 320, h = 240;
  int c;

  // (1)コマンド引数によって指定された番号のカメラに対するキャプチャ構造体を作成する
  if (argc == 1 || (argc == 2 && strlen (argv[1]) == 1 && isdigit (argv[1][0])))
    capture = cvCreateCameraCapture (argc == 2 ? argv[1][0] - '0' : 0);
    if (0 == capture){
    	printf ("Video device not detect.\n");
    	return 0;
    }

  /* この設定は，利用するカメラに依存する */
  // (2)キャプチャサイズを設定する．
  cvSetCaptureProperty (capture, CV_CAP_PROP_FRAME_WIDTH, w);
  cvSetCaptureProperty (capture, CV_CAP_PROP_FRAME_HEIGHT, h);

  cvNamedWindow ("Capture", CV_WINDOW_AUTOSIZE);

  // (3)カメラから画像をキャプチャする
  while (1) {
    frame = cvQueryFrame (capture);
    cvShowImage ("Capture", frame);
    c = cvWaitKey (2);
    //何らかのキーが押された場合・ウィンドウが閉じた場合に終了(元ソースではESCのみ)
    if (c != -1 || NULL == cvGetWindowHandle("Capture"))
      break;
  }

  cvReleaseCapture (&capture);
  cvDestroyWindow ("Capture");

  return 0;
}
