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
include CMakeFiles/LineExtract.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LineExtract.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LineExtract.dir/flags.make

CMakeFiles/LineExtract.dir/LineExtract.cpp.o: CMakeFiles/LineExtract.dir/flags.make
CMakeFiles/LineExtract.dir/LineExtract.cpp.o: ../LineExtract.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/earlwu/Projects/ARMazeGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LineExtract.dir/LineExtract.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LineExtract.dir/LineExtract.cpp.o -c /home/earlwu/Projects/ARMazeGame/LineExtract.cpp

CMakeFiles/LineExtract.dir/LineExtract.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LineExtract.dir/LineExtract.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/earlwu/Projects/ARMazeGame/LineExtract.cpp > CMakeFiles/LineExtract.dir/LineExtract.cpp.i

CMakeFiles/LineExtract.dir/LineExtract.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LineExtract.dir/LineExtract.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/earlwu/Projects/ARMazeGame/LineExtract.cpp -o CMakeFiles/LineExtract.dir/LineExtract.cpp.s

CMakeFiles/LineExtract.dir/LineExtract.cpp.o.requires:

.PHONY : CMakeFiles/LineExtract.dir/LineExtract.cpp.o.requires

CMakeFiles/LineExtract.dir/LineExtract.cpp.o.provides: CMakeFiles/LineExtract.dir/LineExtract.cpp.o.requires
	$(MAKE) -f CMakeFiles/LineExtract.dir/build.make CMakeFiles/LineExtract.dir/LineExtract.cpp.o.provides.build
.PHONY : CMakeFiles/LineExtract.dir/LineExtract.cpp.o.provides

CMakeFiles/LineExtract.dir/LineExtract.cpp.o.provides.build: CMakeFiles/LineExtract.dir/LineExtract.cpp.o


# Object files for target LineExtract
LineExtract_OBJECTS = \
"CMakeFiles/LineExtract.dir/LineExtract.cpp.o"

# External object files for target LineExtract
LineExtract_EXTERNAL_OBJECTS =

LineExtract: CMakeFiles/LineExtract.dir/LineExtract.cpp.o
LineExtract: CMakeFiles/LineExtract.dir/build.make
LineExtract: /usr/local/lib/libopencv_videostab.so.3.4.1
LineExtract: /usr/local/lib/libopencv_ml.so.3.4.1
LineExtract: /usr/local/lib/libopencv_dnn.so.3.4.1
LineExtract: /usr/local/lib/libopencv_shape.so.3.4.1
LineExtract: /usr/local/lib/libopencv_objdetect.so.3.4.1
LineExtract: /usr/local/lib/libopencv_superres.so.3.4.1
LineExtract: /usr/local/lib/libopencv_photo.so.3.4.1
LineExtract: /usr/local/lib/libopencv_stitching.so.3.4.1
LineExtract: /usr/local/lib/libopencv_video.so.3.4.1
LineExtract: /usr/local/lib/libopencv_calib3d.so.3.4.1
LineExtract: /usr/local/lib/libopencv_features2d.so.3.4.1
LineExtract: /usr/local/lib/libopencv_flann.so.3.4.1
LineExtract: /usr/local/lib/libopencv_highgui.so.3.4.1
LineExtract: /usr/local/lib/libopencv_videoio.so.3.4.1
LineExtract: /usr/local/lib/libopencv_imgcodecs.so.3.4.1
LineExtract: /usr/local/lib/libopencv_imgproc.so.3.4.1
LineExtract: /usr/local/lib/libopencv_core.so.3.4.1
LineExtract: CMakeFiles/LineExtract.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/earlwu/Projects/ARMazeGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LineExtract"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LineExtract.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LineExtract.dir/build: LineExtract

.PHONY : CMakeFiles/LineExtract.dir/build

CMakeFiles/LineExtract.dir/requires: CMakeFiles/LineExtract.dir/LineExtract.cpp.o.requires

.PHONY : CMakeFiles/LineExtract.dir/requires

CMakeFiles/LineExtract.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LineExtract.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LineExtract.dir/clean

CMakeFiles/LineExtract.dir/depend:
	cd /home/earlwu/Projects/ARMazeGame/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/earlwu/Projects/ARMazeGame /home/earlwu/Projects/ARMazeGame /home/earlwu/Projects/ARMazeGame/build /home/earlwu/Projects/ARMazeGame/build /home/earlwu/Projects/ARMazeGame/build/CMakeFiles/LineExtract.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LineExtract.dir/depend

