#include "Wall.h"
#include <GL/gl.h>
#include <GL/glut.h>
#include <iostream>

Wall::Wall() {

}

Wall::~Wall() {

}

Wall::Wall(double origin_x, double origin_y, cv::Vec4i l) {
  _height = fabs(l[3] - l[1]);
  _width = fabs(l[2] - l[0]);
  if (_height - 0.0 < 0.00001) {
    _height = 5.0;
  }
  else if (_width - 0.0 < 0.00001) {
    _width = 5.0;
  }
  _x = (l[2] + l[0])/2 - origin_x;
  _y = origin_y - (l[3] + l[1])/2;
}

void Wall::drawWall() {
  glPushMatrix();
  glTranslatef(_x, _y, 0);
  glScalef(_width, _height, 0);
  // std::cout << "x: " << _x << std::endl;
  // std::cout << "y: " << _y << std::endl;
  // std::cout << "width: " << _width << std::endl;
  // std::cout << "height: " << _height << std::endl;
  glutSolidCube(1.0);
  glPopMatrix();
}
