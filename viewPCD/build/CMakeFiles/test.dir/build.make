# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/yxg/pcl/viewPCD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yxg/pcl/viewPCD/build

# Include any dependencies generated for this target.
include CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/view.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/view.cpp.o: ../view.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yxg/pcl/viewPCD/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/view.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/view.cpp.o -c /home/yxg/pcl/viewPCD/view.cpp

CMakeFiles/test.dir/view.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/view.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yxg/pcl/viewPCD/view.cpp > CMakeFiles/test.dir/view.cpp.i

CMakeFiles/test.dir/view.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/view.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yxg/pcl/viewPCD/view.cpp -o CMakeFiles/test.dir/view.cpp.s

CMakeFiles/test.dir/view.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/view.cpp.o.requires

CMakeFiles/test.dir/view.cpp.o.provides: CMakeFiles/test.dir/view.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/view.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/view.cpp.o.provides

CMakeFiles/test.dir/view.cpp.o.provides.build: CMakeFiles/test.dir/view.cpp.o

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/view.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test: CMakeFiles/test.dir/view.cpp.o
test: CMakeFiles/test.dir/build.make
test: /usr/lib/x86_64-linux-gnu/libboost_system.so
test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
test: /usr/lib/x86_64-linux-gnu/libboost_thread.so
test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
test: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
test: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
test: /usr/lib/x86_64-linux-gnu/libpthread.so
test: /usr/local/lib/libpcl_common.so
test: /usr/local/lib/libpcl_octree.so
test: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
test: /usr/local/lib/libpcl_kdtree.so
test: /usr/local/lib/libpcl_search.so
test: /usr/local/lib/libpcl_sample_consensus.so
test: /usr/local/lib/libpcl_filters.so
test: /usr/local/lib/libpcl_features.so
test: /usr/local/lib/libpcl_registration.so
test: /usr/lib/libOpenNI.so
test: /usr/lib/libvtkCommon.so.5.8.0
test: /usr/lib/libvtkFiltering.so.5.8.0
test: /usr/lib/libvtkImaging.so.5.8.0
test: /usr/lib/libvtkGraphics.so.5.8.0
test: /usr/lib/libvtkGenericFiltering.so.5.8.0
test: /usr/lib/libvtkIO.so.5.8.0
test: /usr/lib/libvtkRendering.so.5.8.0
test: /usr/lib/libvtkVolumeRendering.so.5.8.0
test: /usr/lib/libvtkHybrid.so.5.8.0
test: /usr/lib/libvtkWidgets.so.5.8.0
test: /usr/lib/libvtkParallel.so.5.8.0
test: /usr/lib/libvtkInfovis.so.5.8.0
test: /usr/lib/libvtkGeovis.so.5.8.0
test: /usr/lib/libvtkViews.so.5.8.0
test: /usr/lib/libvtkCharts.so.5.8.0
test: /usr/local/lib/libpcl_io.so
test: /usr/local/lib/libpcl_visualization.so
test: /usr/local/lib/libpcl_outofcore.so
test: /usr/local/lib/libpcl_segmentation.so
test: /usr/local/lib/libpcl_people.so
test: /usr/local/lib/libpcl_keypoints.so
test: /usr/lib/x86_64-linux-gnu/libqhull.so
test: /usr/local/lib/libpcl_surface.so
test: /usr/local/lib/libpcl_recognition.so
test: /usr/local/lib/libpcl_tracking.so
test: /usr/lib/x86_64-linux-gnu/libboost_system.so
test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
test: /usr/lib/x86_64-linux-gnu/libboost_thread.so
test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
test: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
test: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
test: /usr/lib/x86_64-linux-gnu/libpthread.so
test: /usr/lib/x86_64-linux-gnu/libqhull.so
test: /usr/lib/libOpenNI.so
test: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
test: /usr/lib/libvtkCommon.so.5.8.0
test: /usr/lib/libvtkFiltering.so.5.8.0
test: /usr/lib/libvtkImaging.so.5.8.0
test: /usr/lib/libvtkGraphics.so.5.8.0
test: /usr/lib/libvtkGenericFiltering.so.5.8.0
test: /usr/lib/libvtkIO.so.5.8.0
test: /usr/lib/libvtkRendering.so.5.8.0
test: /usr/lib/libvtkVolumeRendering.so.5.8.0
test: /usr/lib/libvtkHybrid.so.5.8.0
test: /usr/lib/libvtkWidgets.so.5.8.0
test: /usr/lib/libvtkParallel.so.5.8.0
test: /usr/lib/libvtkInfovis.so.5.8.0
test: /usr/lib/libvtkGeovis.so.5.8.0
test: /usr/lib/libvtkViews.so.5.8.0
test: /usr/lib/libvtkCharts.so.5.8.0
test: /usr/local/lib/libpcl_common.so
test: /usr/local/lib/libpcl_octree.so
test: /usr/local/lib/libpcl_kdtree.so
test: /usr/local/lib/libpcl_search.so
test: /usr/local/lib/libpcl_sample_consensus.so
test: /usr/local/lib/libpcl_filters.so
test: /usr/local/lib/libpcl_features.so
test: /usr/local/lib/libpcl_registration.so
test: /usr/local/lib/libpcl_io.so
test: /usr/local/lib/libpcl_visualization.so
test: /usr/local/lib/libpcl_outofcore.so
test: /usr/local/lib/libpcl_segmentation.so
test: /usr/local/lib/libpcl_people.so
test: /usr/local/lib/libpcl_keypoints.so
test: /usr/local/lib/libpcl_surface.so
test: /usr/local/lib/libpcl_recognition.so
test: /usr/local/lib/libpcl_tracking.so
test: /usr/lib/libvtkViews.so.5.8.0
test: /usr/lib/libvtkInfovis.so.5.8.0
test: /usr/lib/libvtkWidgets.so.5.8.0
test: /usr/lib/libvtkVolumeRendering.so.5.8.0
test: /usr/lib/libvtkHybrid.so.5.8.0
test: /usr/lib/libvtkParallel.so.5.8.0
test: /usr/lib/libvtkRendering.so.5.8.0
test: /usr/lib/libvtkImaging.so.5.8.0
test: /usr/lib/libvtkGraphics.so.5.8.0
test: /usr/lib/libvtkIO.so.5.8.0
test: /usr/lib/libvtkFiltering.so.5.8.0
test: /usr/lib/libvtkCommon.so.5.8.0
test: /usr/lib/libvtksys.so.5.8.0
test: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: test
.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/requires: CMakeFiles/test.dir/view.cpp.o.requires
.PHONY : CMakeFiles/test.dir/requires

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /home/yxg/pcl/viewPCD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yxg/pcl/viewPCD /home/yxg/pcl/viewPCD /home/yxg/pcl/viewPCD/build /home/yxg/pcl/viewPCD/build /home/yxg/pcl/viewPCD/build/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.dir/depend

