# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/intel/Dezhi/git_path/RealFace/LocalLBP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/intel/Dezhi/git_path/RealFace/LocalLBP/build

# Include any dependencies generated for this target.
include CMakeFiles/LocalLBP.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LocalLBP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LocalLBP.dir/flags.make

CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o: CMakeFiles/LocalLBP.dir/flags.make
CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o: ../LandmarkLBP.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/intel/Dezhi/git_path/RealFace/LocalLBP/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o -c /home/intel/Dezhi/git_path/RealFace/LocalLBP/LandmarkLBP.cc

CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/intel/Dezhi/git_path/RealFace/LocalLBP/LandmarkLBP.cc > CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.i

CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/intel/Dezhi/git_path/RealFace/LocalLBP/LandmarkLBP.cc -o CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.s

CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o.requires:
.PHONY : CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o.requires

CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o.provides: CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o.requires
	$(MAKE) -f CMakeFiles/LocalLBP.dir/build.make CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o.provides.build
.PHONY : CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o.provides

CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o.provides.build: CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o

CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o: CMakeFiles/LocalLBP.dir/flags.make
CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o: ../GetLandmarks.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/intel/Dezhi/git_path/RealFace/LocalLBP/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o -c /home/intel/Dezhi/git_path/RealFace/LocalLBP/GetLandmarks.cc

CMakeFiles/LocalLBP.dir/GetLandmarks.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LocalLBP.dir/GetLandmarks.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/intel/Dezhi/git_path/RealFace/LocalLBP/GetLandmarks.cc > CMakeFiles/LocalLBP.dir/GetLandmarks.cc.i

CMakeFiles/LocalLBP.dir/GetLandmarks.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LocalLBP.dir/GetLandmarks.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/intel/Dezhi/git_path/RealFace/LocalLBP/GetLandmarks.cc -o CMakeFiles/LocalLBP.dir/GetLandmarks.cc.s

CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o.requires:
.PHONY : CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o.requires

CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o.provides: CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o.requires
	$(MAKE) -f CMakeFiles/LocalLBP.dir/build.make CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o.provides.build
.PHONY : CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o.provides

CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o.provides.build: CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o

CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o: CMakeFiles/LocalLBP.dir/flags.make
CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o: ../ExtractLBP.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/intel/Dezhi/git_path/RealFace/LocalLBP/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o -c /home/intel/Dezhi/git_path/RealFace/LocalLBP/ExtractLBP.cc

CMakeFiles/LocalLBP.dir/ExtractLBP.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LocalLBP.dir/ExtractLBP.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/intel/Dezhi/git_path/RealFace/LocalLBP/ExtractLBP.cc > CMakeFiles/LocalLBP.dir/ExtractLBP.cc.i

CMakeFiles/LocalLBP.dir/ExtractLBP.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LocalLBP.dir/ExtractLBP.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/intel/Dezhi/git_path/RealFace/LocalLBP/ExtractLBP.cc -o CMakeFiles/LocalLBP.dir/ExtractLBP.cc.s

CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o.requires:
.PHONY : CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o.requires

CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o.provides: CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o.requires
	$(MAKE) -f CMakeFiles/LocalLBP.dir/build.make CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o.provides.build
.PHONY : CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o.provides

CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o.provides.build: CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o

CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o: CMakeFiles/LocalLBP.dir/flags.make
CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o: ../lib/liblbp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/intel/Dezhi/git_path/RealFace/LocalLBP/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o -c /home/intel/Dezhi/git_path/RealFace/LocalLBP/lib/liblbp.cpp

CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/intel/Dezhi/git_path/RealFace/LocalLBP/lib/liblbp.cpp > CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.i

CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/intel/Dezhi/git_path/RealFace/LocalLBP/lib/liblbp.cpp -o CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.s

CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o.requires:
.PHONY : CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o.requires

CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o.provides: CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o.requires
	$(MAKE) -f CMakeFiles/LocalLBP.dir/build.make CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o.provides.build
.PHONY : CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o.provides

CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o.provides.build: CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o

CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o: CMakeFiles/LocalLBP.dir/flags.make
CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o: ../lib/flandmark_detector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/intel/Dezhi/git_path/RealFace/LocalLBP/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o -c /home/intel/Dezhi/git_path/RealFace/LocalLBP/lib/flandmark_detector.cpp

CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/intel/Dezhi/git_path/RealFace/LocalLBP/lib/flandmark_detector.cpp > CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.i

CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/intel/Dezhi/git_path/RealFace/LocalLBP/lib/flandmark_detector.cpp -o CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.s

CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o.requires:
.PHONY : CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o.requires

CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o.provides: CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o.requires
	$(MAKE) -f CMakeFiles/LocalLBP.dir/build.make CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o.provides.build
.PHONY : CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o.provides

CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o.provides.build: CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o

# Object files for target LocalLBP
LocalLBP_OBJECTS = \
"CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o" \
"CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o" \
"CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o" \
"CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o" \
"CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o"

# External object files for target LocalLBP
LocalLBP_EXTERNAL_OBJECTS =

LocalLBP: CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o
LocalLBP: CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o
LocalLBP: CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o
LocalLBP: CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o
LocalLBP: CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o
LocalLBP: CMakeFiles/LocalLBP.dir/build.make
LocalLBP: /usr/local/lib/libopencv_viz.a
LocalLBP: /usr/local/lib/libopencv_videostab.a
LocalLBP: /usr/local/lib/libopencv_videoio.a
LocalLBP: /usr/local/lib/libopencv_video.a
LocalLBP: /usr/local/lib/libopencv_superres.a
LocalLBP: /usr/local/lib/libopencv_stitching.a
LocalLBP: /usr/local/lib/libopencv_shape.a
LocalLBP: /usr/local/lib/libopencv_photo.a
LocalLBP: /usr/local/lib/libopencv_objdetect.a
LocalLBP: /usr/local/lib/libopencv_ml.a
LocalLBP: /usr/local/lib/libopencv_imgproc.a
LocalLBP: /usr/local/lib/libopencv_imgcodecs.a
LocalLBP: /usr/local/lib/libopencv_highgui.a
LocalLBP: /usr/local/lib/libopencv_flann.a
LocalLBP: /usr/local/lib/libopencv_features2d.a
LocalLBP: /usr/local/lib/libopencv_cudev.a
LocalLBP: /usr/local/lib/libopencv_cudawarping.a
LocalLBP: /usr/local/lib/libopencv_cudastereo.a
LocalLBP: /usr/local/lib/libopencv_cudaoptflow.a
LocalLBP: /usr/local/lib/libopencv_cudaobjdetect.a
LocalLBP: /usr/local/lib/libopencv_cudalegacy.a
LocalLBP: /usr/local/lib/libopencv_cudaimgproc.a
LocalLBP: /usr/local/lib/libopencv_cudafilters.a
LocalLBP: /usr/local/lib/libopencv_cudafeatures2d.a
LocalLBP: /usr/local/lib/libopencv_cudacodec.a
LocalLBP: /usr/local/lib/libopencv_cudabgsegm.a
LocalLBP: /usr/local/lib/libopencv_cudaarithm.a
LocalLBP: /usr/local/lib/libopencv_core.a
LocalLBP: /usr/local/lib/libopencv_calib3d.a
LocalLBP: /usr/local/lib/libopencv_cudawarping.a
LocalLBP: /usr/local/lib/libopencv_objdetect.a
LocalLBP: /usr/local/lib/libopencv_cudafilters.a
LocalLBP: /usr/local/lib/libopencv_cudaarithm.a
LocalLBP: /usr/local/lib/libopencv_features2d.a
LocalLBP: /usr/local/lib/libopencv_ml.a
LocalLBP: /usr/local/lib/libopencv_highgui.a
LocalLBP: /usr/local/lib/libopencv_videoio.a
LocalLBP: /usr/lib/x86_64-linux-gnu/libbz2.so
LocalLBP: /usr/local/lib/libopencv_imgcodecs.a
LocalLBP: /usr/lib/x86_64-linux-gnu/libjpeg.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libwebp.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libpng.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libtiff.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libjasper.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libjpeg.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libwebp.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libpng.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libtiff.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libjasper.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libImath.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libIlmImf.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libIex.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libHalf.so
LocalLBP: /usr/lib/x86_64-linux-gnu/libIlmThread.so
LocalLBP: /usr/local/lib/libopencv_flann.a
LocalLBP: /usr/local/lib/libopencv_video.a
LocalLBP: /usr/local/lib/libopencv_imgproc.a
LocalLBP: /usr/local/lib/libopencv_core.a
LocalLBP: /usr/local/lib/libopencv_cudev.a
LocalLBP: /usr/lib/x86_64-linux-gnu/libz.so
LocalLBP: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
LocalLBP: CMakeFiles/LocalLBP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable LocalLBP"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LocalLBP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LocalLBP.dir/build: LocalLBP
.PHONY : CMakeFiles/LocalLBP.dir/build

CMakeFiles/LocalLBP.dir/requires: CMakeFiles/LocalLBP.dir/LandmarkLBP.cc.o.requires
CMakeFiles/LocalLBP.dir/requires: CMakeFiles/LocalLBP.dir/GetLandmarks.cc.o.requires
CMakeFiles/LocalLBP.dir/requires: CMakeFiles/LocalLBP.dir/ExtractLBP.cc.o.requires
CMakeFiles/LocalLBP.dir/requires: CMakeFiles/LocalLBP.dir/lib/liblbp.cpp.o.requires
CMakeFiles/LocalLBP.dir/requires: CMakeFiles/LocalLBP.dir/lib/flandmark_detector.cpp.o.requires
.PHONY : CMakeFiles/LocalLBP.dir/requires

CMakeFiles/LocalLBP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LocalLBP.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LocalLBP.dir/clean

CMakeFiles/LocalLBP.dir/depend:
	cd /home/intel/Dezhi/git_path/RealFace/LocalLBP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/intel/Dezhi/git_path/RealFace/LocalLBP /home/intel/Dezhi/git_path/RealFace/LocalLBP /home/intel/Dezhi/git_path/RealFace/LocalLBP/build /home/intel/Dezhi/git_path/RealFace/LocalLBP/build /home/intel/Dezhi/git_path/RealFace/LocalLBP/build/CMakeFiles/LocalLBP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LocalLBP.dir/depend

