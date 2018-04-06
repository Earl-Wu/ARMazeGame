#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

#include <iostream>
#include <math.h>
#if ( (defined(__MACH__)) && (defined(__APPLE__)) )
#include <stdlib.h>
#include <OpenGL/gl.h>
#include <GLUT/glut.h>
#include <OpenGL/glext.h>
#else
#include <stdlib.h>
#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/glut.h>
#include <GL/glext.h>
#endif

using namespace cv;
using namespace std;


void InitCanvas()
{
  glViewport(0, 0, 500, 500);
  glClearColor(0.1, 0.1, 0.1, 1.0);
}

void Draw ()
{

  Mat src = imread("1.png", 0);
  // cout << src.size() << endl;
  int image_width = src.size().width;
  int image_h = src.size().height;
  Mat dst, cdst;
  Canny(src, dst, 50, 200, 3);
  cvtColor(dst, cdst, CV_GRAY2BGR);

  vector<Vec4i> lines;
  HoughLinesP(dst, lines, 1, CV_PI/180, 5, 5, 10 );

  Vec4i l = lines[0];

  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  glMatrixMode(GL_PROJECTION);
  glLoadIdentity(); // doing matrix math
  glOrtho(-10.0, 250.0, -10.0, 200.0, -10, 10);
  for (size_t i = 0; i < lines.size(); i++) {
      Vec4i l = lines[i];
      line( cdst, Point(l[0], l[1]), Point(l[2], l[3]), Scalar(0,0,255), 3, CV_AA);
      float h, w, x, y;
      // y2-y1
      h = fabs(l[3] - l[1]);
      cout << "h: " << h << endl;
      // x2-x1
      w = fabs(l[2] - l[0]);
      cout << "w: " << w << endl;
      //midpoint_x
      x = (l[2] + l[0])/2;
      cout << "x: " << x << endl;
      //midpoint_y
      y = image_h - (l[3] + l[1])/2;
      cout << "y: " << y << endl;
      cout << "--------------------------" << endl;
      if (h < w) {
        h = 5.0;
      }
      else {
        w = 5.0;
      }
      glMatrixMode(GL_MODELVIEW);
      glLoadIdentity(); // doing matrix math
      glPushMatrix();
      glTranslatef(x, y, 0);
      glScalef(w, h, 0);
      // cout << l[0] << " " << l[1] << " " << l[2] << " " << l[3] << endl;
      // cout << l[2]-l[0] << endl;
      // cout << l[3]-l[1] << endl;
      // cout << mid.x << endl;
      // cout << mid.y << endl;
      glutSolidCube(1.0);
      glPopMatrix();
      glFlush();
  }
  imshow("source", src);
  imshow("detected lines", cdst);
  waitKey();
}

void help()
{
 cout << "\nThis program demonstrates line finding with the Hough transform.\n"
         "Usage:\n"
         "./houghlines <image_name>, Default is pic1.jpg\n" << endl;
}

int main(int argc, char** argv)
{

 //const char* filename = argc >= 2 ? argv[1] : "pic1.jpg";

 Mat src = imread("1.png", 0);
 // if(src.empty())
 // {
 //     help();
 //     cout << "can not open " << filename << endl;
 //     return -1;
 // }

Mat dst, cdst;
Canny(src, dst, 50, 200, 3);
cvtColor(dst, cdst, CV_GRAY2BGR);

vector<Vec4i> lines;
HoughLinesP(dst, lines, 1, CV_PI/180, 5, 5, 10 );
for (size_t i = 0; i < lines.size(); i++) {
    Vec4i l = lines[i];
    line( cdst, Point(l[0], l[1]), Point(l[2], l[3]), Scalar(0,0,255), 3, CV_AA);
}

//waitKey();

glutInit(&argc, argv);
glutInitDisplayMode(GLUT_RGBA |GLUT_DEPTH);
glutInitWindowSize(500, 500);
glutInitWindowPosition(50, 50);
glutCreateWindow("helloGL");

glewInit();
if (glewIsSupported("GL_VERSION_2_0"))
{
  cout << "Ready for OpenGL 2.0\n";
    }
    else
    {
       cout << "OpenGL 2.0 not supported\n";
       exit(1);
    }

    InitCanvas();
    glutDisplayFunc(Draw);
    glutMainLoop();

    return 0;
}
