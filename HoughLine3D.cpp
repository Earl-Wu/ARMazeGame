#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "Maze.h"

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

Maze maze;

void InitCanvas()
{
  glViewport(0, 0, 500, 500);
  glClearColor(0.1, 0.1, 0.1, 1.0);
  glEnable(GL_LIGHTING);
  glEnable(GL_LIGHT0);
  
  GLfloat camera_color[4] = {1,1,1,1};
  GLfloat ambient_color[4] = {0.1,0.1,0.1,1};

  glLightfv(GL_LIGHT0, GL_DIFFUSE, camera_color);
  glLightfv(GL_LIGHT0, GL_AMBIENT, ambient_color);
  glLightfv(GL_LIGHT0, GL_SPECULAR, camera_color);
  glLightf(GL_LIGHT0, GL_LINEAR_ATTENUATION, 500);
  // glLightfv(GL_LIGHT0, GL_AMBIENT, camera_color);

  GLfloat color[4] = {1,1,1,1};
  glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, color);
  glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT, ambient_color);
}

void Draw ()
{

  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  glMatrixMode(GL_PROJECTION);
  glLoadIdentity(); // doing matrix math
  gluPerspective(60, 1.0, 0.1, 1000);
  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity(); // doing matrix math
  // glOrtho(-10.0, 250.0, -10.0, 200.0, -500, 200.0);
  gluLookAt(125, 50, 250, 125, 0, 0, 0, 1, 0);
  GLfloat pos[3] = {50,100,-50};
  glLightfv(GL_LIGHT0, GL_POSITION, pos);
  maze.drawMaze();
  glFlush();

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

 Mat src = imread("../1.png", 0);
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
maze.loadFromImage("../1.png");

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
