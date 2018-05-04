#pragma once
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

class Wall {
public:
  Wall();
  Wall(double origin_x, double origin_y, cv::Vec4i line);
  ~Wall();

  void drawWall();

  float _height, _width, _x, _y;

};
