#include "Maze.h"
#include <GL/gl.h>
#include <GL/glut.h>
#include <iostream>

using namespace cv;

Maze::Maze() {
}

Maze::~Maze() {

}

void Maze::loadFromImage(const std::string& filename) {

    // setting up the maze
    Mat src = imread(filename, 0);
    _width = src.size().width;
    std::cout << "width: " << _width << std::endl;
    _height = src.size().height;
    std::cout << "height: " << _height << std::endl;

    _origin_x = _width/2;
    _origin_y = _height/2;

    // reading in the walls
    Mat gray;
    if (src.channels() == 3)
    {
        cvtColor(src, gray, CV_BGR2GRAY);
    }
    else
    {
        gray = src;
    }
    // Apply adaptiveThreshold at the bitwise_not of gray, notice the ~ symbol
    Mat bw;
    adaptiveThreshold(~gray, bw, 255, CV_ADAPTIVE_THRESH_MEAN_C, THRESH_BINARY, 15, -2);
    // Create the images that will use to extract the horizontal and vertical lines
    Mat horizontal = bw.clone();
    Mat vertical = bw.clone();
    // Specify size on horizontal axis
    int horizontalsize = horizontal.cols / 30;
    // Create structure element for extracting horizontal lines through morphology operations
    Mat horizontalStructure = getStructuringElement(MORPH_RECT, Size(horizontalsize,1));
    // Apply morphology operations
    erode(horizontal, horizontal, horizontalStructure, Point(-1, -1));
    dilate(horizontal, horizontal, horizontalStructure, Point(-1, -1));
    // Specify size on vertical axis
    int verticalsize = vertical.rows / 30;
    // Create structure element for extracting vertical lines through morphology operations
    Mat verticalStructure = getStructuringElement(MORPH_RECT, Size( 1,verticalsize));
    // Apply morphology operations
    erode(vertical, vertical, verticalStructure, Point(-1, -1));
    dilate(vertical, vertical, verticalStructure, Point(-1, -1));
    // Extract edges and smooth image according to the logic
    // 1. extract edges
    // 2. dilate(edges)
    // 3. src.copyTo(smooth)
    // 4. blur smooth img
    // 5. smooth.copyTo(src, edges)
    // Step 1
    Mat edges;
    adaptiveThreshold(vertical, edges, 255, CV_ADAPTIVE_THRESH_MEAN_C, THRESH_BINARY, 3, -2);
    // Step 2
    Mat kernel = Mat::ones(2, 2, CV_8UC1);
    dilate(edges, edges, kernel);
    // Step 3
    Mat smooth;
    vertical.copyTo(smooth);
    // Step 4
    blur(smooth, smooth, Size(2, 2));
    // Step 5
    smooth.copyTo(vertical, edges);

    // getting walls
    getWalls(horizontal, _horizontalWalls);
    getWalls(vertical, _verticalWalls);
    // dealing with horizontal lines
    // Scalar intensity = horizontal.at<uchar>(0,0);
    // int c = 0;
    // Scalar cur_intensity;
    // Wall temp;
    // Vec4i l;
    // std::vector<Vec4i> lines;
    // TODO: Put it in a function
    // for (int r = 0; r < horizontal.rows; r++) {
    //   c = 0;
    //   while (c < horizontal.cols) {
    //     cur_intensity = horizontal.at<uchar>(r,c);
    //     if (cur_intensity[0] > 100) {
    //       l[0] = c;
    //       l[1] = r;
    //       while (cur_intensity[0] > 100 && c < (horizontal.cols-1)) {
    //         c++;
    //         cur_intensity = horizontal.at<uchar>(r,c);
    //       }
    //       l[2] = c;
    //       l[3] = r;
    //       temp = Wall(_origin_x, _origin_y, l);
    //       _horizontalWalls.push_back(temp);
    //       c++;
    //     }
    //   }
    // }

    imshow("source", src);

}

void Maze::getWalls(const Mat& matrix, std::vector<Wall>& walls) {
  Scalar intensity = matrix.at<uchar>(0,0);
  int c = 0;
  Scalar cur_intensity;
  Wall temp;
  Vec4i l;
  std::vector<Vec4i> lines;
  for (int r = 0; r < matrix.rows; r++) {
    c = 0;
    while (c < matrix.cols) {
      cur_intensity = matrix.at<uchar>(r,c);
      if (cur_intensity[0] > 100) {
        l[0] = c;
        l[1] = r;
        while (cur_intensity[0] > 100 && c < (matrix.cols-1)) {
          c++;
          cur_intensity = matrix.at<uchar>(r,c);
        }
        l[2] = c;
        l[3] = r;
        temp = Wall(_origin_x, _origin_y, l);
        walls.push_back(temp);
        c++;
      }
      c++;
    }
  }
}

void Maze::drawMaze() {
  glPushMatrix();
  glTranslatef(_origin_x, _origin_y, 0);
  glRotatef(_roll, 0, 0, 1);
  glRotatef(_pitch, 1, 0, 0);
  glRotatef(-45, 1, 0, 0);
  for (int i = 0; i < _horizontalWalls.size(); i++) {
    _horizontalWalls[i].drawWall();
  }
  for (int j = 0; j < _verticalWalls.size(); j++) {
    _verticalWalls[j].drawWall();
  }
  glPopMatrix();
}
