cmake_minimum_required (VERSION 2.8.11)
set(CMAKE_CXX_FLAGS "-g -Wall -std=c++11 -DUNIX")

project (HoughLine3D)
include_directories(HoughLine3D 3rdparty)
add_executable(HoughLine3D HoughLine3D.cpp Wall.cpp Maze.cpp)
install (TARGETS HoughLine3D DESTINATION ${CMAKE_BINARY_DIR}/bin)
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )


if (WIN32)
   target_link_libraries(A0Hello glew32 glut32)
   target_link_libraries(HelloGL glew32 glut32)
   target_link_libraries(Multisample glew32 glut32)
   link_directories(3rdparty/GL)
   install (FILES
      3rdparty/GL/glew32.dll
      3rdparty/GL/glut32.dll
      DESTINATION ${CMAKE_BINARY_DIR}/bin)
elseif (UNIX)
   target_link_libraries(HoughLine3D GL GLU GLEW glut X11)
   target_link_libraries( HoughLine3D ${OpenCV_LIBS} )
   link_directories(/usr/X11R6/lib)
endif()
