# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/earlwu/Projects/ARMazeGame

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/earlwu/Projects/ARMazeGame/build

# Include any dependencies generated for this target.
include CMakeFiles/HoughLine3D.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HoughLine3D.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HoughLine3D.dir/flags.make

CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o: CMakeFiles/HoughLine3D.dir/flags.make
CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o: ../HoughLine3D.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/earlwu/Projects/ARMazeGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o -c /home/earlwu/Projects/ARMazeGame/HoughLine3D.cpp

CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/earlwu/Projects/ARMazeGame/HoughLine3D.cpp > CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.i

CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/earlwu/Projects/ARMazeGame/HoughLine3D.cpp -o CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.s

CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o.requires:

.PHONY : CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o.requires

CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o.provides: CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o.requires
	$(MAKE) -f CMakeFiles/HoughLine3D.dir/build.make CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o.provides.build
.PHONY : CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o.provides

CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o.provides.build: CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o


CMakeFiles/HoughLine3D.dir/Wall.cpp.o: CMakeFiles/HoughLine3D.dir/flags.make
CMakeFiles/HoughLine3D.dir/Wall.cpp.o: ../Wall.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/earlwu/Projects/ARMazeGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/HoughLine3D.dir/Wall.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HoughLine3D.dir/Wall.cpp.o -c /home/earlwu/Projects/ARMazeGame/Wall.cpp

CMakeFiles/HoughLine3D.dir/Wall.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HoughLine3D.dir/Wall.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/earlwu/Projects/ARMazeGame/Wall.cpp > CMakeFiles/HoughLine3D.dir/Wall.cpp.i

CMakeFiles/HoughLine3D.dir/Wall.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HoughLine3D.dir/Wall.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/earlwu/Projects/ARMazeGame/Wall.cpp -o CMakeFiles/HoughLine3D.dir/Wall.cpp.s

CMakeFiles/HoughLine3D.dir/Wall.cpp.o.requires:

.PHONY : CMakeFiles/HoughLine3D.dir/Wall.cpp.o.requires

CMakeFiles/HoughLine3D.dir/Wall.cpp.o.provides: CMakeFiles/HoughLine3D.dir/Wall.cpp.o.requires
	$(MAKE) -f CMakeFiles/HoughLine3D.dir/build.make CMakeFiles/HoughLine3D.dir/Wall.cpp.o.provides.build
.PHONY : CMakeFiles/HoughLine3D.dir/Wall.cpp.o.provides

CMakeFiles/HoughLine3D.dir/Wall.cpp.o.provides.build: CMakeFiles/HoughLine3D.dir/Wall.cpp.o


CMakeFiles/HoughLine3D.dir/Maze.cpp.o: CMakeFiles/HoughLine3D.dir/flags.make
CMakeFiles/HoughLine3D.dir/Maze.cpp.o: ../Maze.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/earlwu/Projects/ARMazeGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/HoughLine3D.dir/Maze.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HoughLine3D.dir/Maze.cpp.o -c /home/earlwu/Projects/ARMazeGame/Maze.cpp

CMakeFiles/HoughLine3D.dir/Maze.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HoughLine3D.dir/Maze.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/earlwu/Projects/ARMazeGame/Maze.cpp > CMakeFiles/HoughLine3D.dir/Maze.cpp.i

CMakeFiles/HoughLine3D.dir/Maze.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HoughLine3D.dir/Maze.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/earlwu/Projects/ARMazeGame/Maze.cpp -o CMakeFiles/HoughLine3D.dir/Maze.cpp.s

CMakeFiles/HoughLine3D.dir/Maze.cpp.o.requires:

.PHONY : CMakeFiles/HoughLine3D.dir/Maze.cpp.o.requires

CMakeFiles/HoughLine3D.dir/Maze.cpp.o.provides: CMakeFiles/HoughLine3D.dir/Maze.cpp.o.requires
	$(MAKE) -f CMakeFiles/HoughLine3D.dir/build.make CMakeFiles/HoughLine3D.dir/Maze.cpp.o.provides.build
.PHONY : CMakeFiles/HoughLine3D.dir/Maze.cpp.o.provides

CMakeFiles/HoughLine3D.dir/Maze.cpp.o.provides.build: CMakeFiles/HoughLine3D.dir/Maze.cpp.o


# Object files for target HoughLine3D
HoughLine3D_OBJECTS = \
"CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o" \
"CMakeFiles/HoughLine3D.dir/Wall.cpp.o" \
"CMakeFiles/HoughLine3D.dir/Maze.cpp.o"

# External object files for target HoughLine3D
HoughLine3D_EXTERNAL_OBJECTS =

HoughLine3D: CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o
HoughLine3D: CMakeFiles/HoughLine3D.dir/Wall.cpp.o
HoughLine3D: CMakeFiles/HoughLine3D.dir/Maze.cpp.o
HoughLine3D: CMakeFiles/HoughLine3D.dir/build.make
HoughLine3D: /usr/local/lib/libopencv_videostab.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_ml.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_dnn.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_shape.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_objdetect.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_superres.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_photo.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_stitching.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_video.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_calib3d.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_features2d.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_flann.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_highgui.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_videoio.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_imgcodecs.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_imgproc.so.3.4.1
HoughLine3D: /usr/local/lib/libopencv_core.so.3.4.1
HoughLine3D: CMakeFiles/HoughLine3D.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/earlwu/Projects/ARMazeGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable HoughLine3D"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HoughLine3D.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HoughLine3D.dir/build: HoughLine3D

.PHONY : CMakeFiles/HoughLine3D.dir/build

CMakeFiles/HoughLine3D.dir/requires: CMakeFiles/HoughLine3D.dir/HoughLine3D.cpp.o.requires
CMakeFiles/HoughLine3D.dir/requires: CMakeFiles/HoughLine3D.dir/Wall.cpp.o.requires
CMakeFiles/HoughLine3D.dir/requires: CMakeFiles/HoughLine3D.dir/Maze.cpp.o.requires

.PHONY : CMakeFiles/HoughLine3D.dir/requires

CMakeFiles/HoughLine3D.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HoughLine3D.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HoughLine3D.dir/clean

CMakeFiles/HoughLine3D.dir/depend:
	cd /home/earlwu/Projects/ARMazeGame/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/earlwu/Projects/ARMazeGame /home/earlwu/Projects/ARMazeGame /home/earlwu/Projects/ARMazeGame/build /home/earlwu/Projects/ARMazeGame/build /home/earlwu/Projects/ARMazeGame/build/CMakeFiles/HoughLine3D.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HoughLine3D.dir/depend

