#pragma once
#include "Wall.h"
#include <vector>
#include <string>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

class Maze {
public:
  Maze();
  ~Maze();
  void loadFromImage(const std::string& filename);
  void drawMaze();
  void getWalls(const cv::Mat& matrix, std::vector<Wall>& walls);

  std::vector<Wall> _horizontalWalls;
  std::vector<Wall> _verticalWalls;
  int _height;
  int _width;
  double _origin_x;
  double _origin_y;
  double _pitch;
  double _roll;
};
