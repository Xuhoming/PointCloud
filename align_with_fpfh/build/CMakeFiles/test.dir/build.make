# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/yxg/pcl/pcl/align_with_fpfh

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yxg/pcl/pcl/align_with_fpfh/build

# Include any dependencies generated for this target.
include CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/test.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/test.cpp.o: ../test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yxg/pcl/pcl/align_with_fpfh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test.dir/test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/test.cpp.o -c /home/yxg/pcl/pcl/align_with_fpfh/test.cpp

CMakeFiles/test.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yxg/pcl/pcl/align_with_fpfh/test.cpp > CMakeFiles/test.dir/test.cpp.i

CMakeFiles/test.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yxg/pcl/pcl/align_with_fpfh/test.cpp -o CMakeFiles/test.dir/test.cpp.s

CMakeFiles/test.dir/test.cpp.o.requires:

.PHONY : CMakeFiles/test.dir/test.cpp.o.requires

CMakeFiles/test.dir/test.cpp.o.provides: CMakeFiles/test.dir/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/test.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/test.cpp.o.provides

CMakeFiles/test.dir/test.cpp.o.provides.build: CMakeFiles/test.dir/test.cpp.o


# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/test.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test: CMakeFiles/test.dir/test.cpp.o
test: CMakeFiles/test.dir/build.make
test: /usr/lib64/libboost_system-mt.so
test: /usr/lib64/libboost_filesystem-mt.so
test: /usr/lib64/libboost_thread-mt.so
test: /usr/lib64/libboost_date_time-mt.so
test: /usr/lib64/libboost_iostreams-mt.so
test: /usr/lib64/libboost_serialization-mt.so
test: /usr/lib64/libboost_chrono-mt.so
test: /usr/lib64/libboost_atomic-mt.so
test: /usr/lib64/libboost_regex-mt.so
test: /usr/local/lib64/libpcl_common.so
test: /usr/local/lib64/libpcl_octree.so
test: /usr/lib64/libOpenNI.so
test: /usr/lib64/libfreetype.so
test: /usr/lib64/libz.so
test: /usr/lib64/libjpeg.so
test: /usr/lib64/libpng.so
test: /usr/lib64/libtiff.so
test: /usr/lib64/libjsoncpp.so
test: /usr/lib64/libexpat.so
test: /usr/lib64/libhdf5.so
test: /usr/lib64/libhdf5_hl.so
test: /usr/lib64/libdl.so
test: /usr/lib64/libm.so
test: /usr/lib64/libnetcdf_c++.so
test: /usr/lib64/libnetcdf.so
test: /usr/lib64/libgl2ps.so
test: /usr/lib64/libxml2.so
test: /usr/lib64/libtheoraenc.so
test: /usr/lib64/libtheoradec.so
test: /usr/lib64/libogg.so
test: /usr/lib64/libpython2.7.so
test: /usr/lib/libvtkWrappingTools.a
test: /usr/local/lib64/libpcl_io.so
test: /usr/local/lib64/libflann_cpp_s.a
test: /usr/local/lib64/libpcl_kdtree.so
test: /usr/local/lib64/libpcl_search.so
test: /usr/local/lib64/libpcl_sample_consensus.so
test: /usr/local/lib64/libpcl_filters.so
test: /usr/local/lib64/libpcl_features.so
test: /usr/local/lib64/libpcl_segmentation.so
test: /usr/local/lib64/libpcl_visualization.so
test: /usr/lib64/libqhull_p.so
test: /usr/local/lib64/libpcl_surface.so
test: /usr/local/lib64/libpcl_registration.so
test: /usr/local/lib64/libpcl_keypoints.so
test: /usr/local/lib64/libpcl_tracking.so
test: /usr/local/lib64/libpcl_recognition.so
test: /usr/local/lib64/libpcl_outofcore.so
test: /usr/local/lib64/libpcl_people.so
test: /usr/lib64/libboost_system-mt.so
test: /usr/lib64/libboost_filesystem-mt.so
test: /usr/lib64/libboost_thread-mt.so
test: /usr/lib64/libboost_date_time-mt.so
test: /usr/lib64/libboost_iostreams-mt.so
test: /usr/lib64/libboost_serialization-mt.so
test: /usr/lib64/libboost_chrono-mt.so
test: /usr/lib64/libboost_atomic-mt.so
test: /usr/lib64/libboost_regex-mt.so
test: /usr/lib64/libqhull_p.so
test: /usr/lib64/libOpenNI.so
test: /usr/local/lib64/libflann_cpp_s.a
test: /usr/lib64/libfreetype.so
test: /usr/lib64/libz.so
test: /usr/lib64/libjpeg.so
test: /usr/lib64/libpng.so
test: /usr/lib64/libtiff.so
test: /usr/lib64/libvtkDomainsChemistry.so.1
test: /usr/lib64/libjsoncpp.so
test: /usr/lib64/libexpat.so
test: /usr/lib64/libvtkFiltersFlowPaths.so.1
test: /usr/lib64/libvtkFiltersGeneric.so.1
test: /usr/lib64/libvtkFiltersHyperTree.so.1
test: /usr/lib64/libvtkFiltersParallelImaging.so.1
test: /usr/lib64/libvtkFiltersProgrammable.so.1
test: /usr/lib64/libvtkvtkFiltersSMP.so.1
test: /usr/lib64/libvtkFiltersSelection.so.1
test: /usr/lib64/libvtkFiltersVerdict.so.1
test: /usr/lib64/libvtkverdict.so.1
test: /usr/lib64/libvtkGUISupportQtOpenGL.so.1
test: /usr/lib64/libvtkGUISupportQtSQL.so.1
test: /usr/lib64/libvtkIOSQL.so.1
test: /usr/lib64/libvtksqlite.so.1
test: /usr/lib64/libvtkGUISupportQtWebkit.so.1
test: /usr/lib64/libvtkViewsQt.so.1
test: /usr/lib64/libvtkIOAMR.so.1
test: /usr/lib64/libhdf5.so
test: /usr/lib64/libhdf5_hl.so
test: /usr/lib64/libdl.so
test: /usr/lib64/libm.so
test: /usr/lib64/libvtkIOEnSight.so.1
test: /usr/lib64/libvtkIOExodus.so.1
test: /usr/lib64/libnetcdf_c++.so
test: /usr/lib64/libnetcdf.so
test: /usr/lib64/libvtkIOExport.so.1
test: /usr/lib64/libvtkRenderingGL2PS.so.1
test: /usr/lib64/libgl2ps.so
test: /usr/lib64/libvtkIOImport.so.1
test: /usr/lib64/libvtkIOInfovis.so.1
test: /usr/lib64/libxml2.so
test: /usr/lib64/libvtkIOLSDyna.so.1
test: /usr/lib64/libvtkIOMINC.so.1
test: /usr/lib64/libvtkIOMovie.so.1
test: /usr/lib64/libtheoraenc.so
test: /usr/lib64/libtheoradec.so
test: /usr/lib64/libogg.so
test: /usr/lib64/libvtkIOPLY.so.1
test: /usr/lib64/libvtkIOParallel.so.1
test: /usr/lib64/libvtkIOVideo.so.1
test: /usr/lib64/libvtkImagingMath.so.1
test: /usr/lib64/libvtkImagingMorphological.so.1
test: /usr/lib64/libvtkImagingStatistics.so.1
test: /usr/lib64/libvtkImagingStencil.so.1
test: /usr/lib64/libvtkInteractionImage.so.1
test: /usr/lib64/libpython2.7.so
test: /usr/lib64/libvtkRenderingFreeTypeOpenGL.so.1
test: /usr/lib64/libvtkRenderingImage.so.1
test: /usr/lib64/libvtkRenderingLIC.so.1
test: /usr/lib64/libvtkRenderingLOD.so.1
test: /usr/lib64/libvtkRenderingQt.so.1
test: /usr/lib64/libvtkRenderingVolumeAMR.so.1
test: /usr/lib64/libvtkRenderingVolumeOpenGL.so.1
test: /usr/lib64/libvtkViewsContext2D.so.1
test: /usr/lib64/libvtkViewsGeovis.so.1
test: /usr/lib64/libvtkWrappingPython27Core.so.1
test: /usr/lib/libvtkWrappingTools.a
test: /usr/local/lib64/libpcl_common.so
test: /usr/local/lib64/libpcl_octree.so
test: /usr/local/lib64/libpcl_io.so
test: /usr/local/lib64/libpcl_kdtree.so
test: /usr/local/lib64/libpcl_search.so
test: /usr/local/lib64/libpcl_sample_consensus.so
test: /usr/local/lib64/libpcl_filters.so
test: /usr/local/lib64/libpcl_features.so
test: /usr/local/lib64/libpcl_segmentation.so
test: /usr/local/lib64/libpcl_visualization.so
test: /usr/local/lib64/libpcl_surface.so
test: /usr/local/lib64/libpcl_registration.so
test: /usr/local/lib64/libpcl_keypoints.so
test: /usr/local/lib64/libpcl_tracking.so
test: /usr/local/lib64/libpcl_recognition.so
test: /usr/local/lib64/libpcl_outofcore.so
test: /usr/local/lib64/libpcl_people.so
test: /usr/lib64/libtheoraenc.so
test: /usr/lib64/libtheoradec.so
test: /usr/lib64/libogg.so
test: /usr/lib64/libvtkFiltersParallel.so.1
test: /usr/lib64/libvtkexoIIc.so.1
test: /usr/lib64/libnetcdf_c++.so
test: /usr/lib64/libnetcdf.so
test: /usr/lib64/libvtkIONetCDF.so.1
test: /usr/lib64/libvtkFiltersTexture.so.1
test: /usr/lib64/libvtkGUISupportQt.so.1
test: /usr/lib64/qt4/libQtGui.so
test: /usr/lib64/qt4/libQtNetwork.so
test: /usr/lib64/qt4/libQtCore.so
test: /usr/lib64/libvtkFiltersAMR.so.1
test: /usr/lib64/libvtkParallelCore.so.1
test: /usr/lib64/libvtkIOLegacy.so.1
test: /usr/lib64/libvtkViewsInfovis.so.1
test: /usr/lib64/libvtkChartsCore.so.1
test: /usr/lib64/libvtkCommonColor.so.1
test: /usr/lib64/libvtkRenderingContext2D.so.1
test: /usr/lib64/libvtkFiltersImaging.so.1
test: /usr/lib64/libvtkRenderingLabel.so.1
test: /usr/lib64/libvtkGeovisCore.so.1
test: /usr/lib64/libvtkRenderingOpenGL.so.1
test: /usr/lib64/libGLU.so
test: /usr/lib64/libSM.so
test: /usr/lib64/libICE.so
test: /usr/lib64/libX11.so
test: /usr/lib64/libXext.so
test: /usr/lib64/libXt.so
test: /usr/lib64/libvtkIOXML.so.1
test: /usr/lib64/libvtkIOGeometry.so.1
test: /usr/lib64/libvtkIOXMLParser.so.1
test: /usr/lib64/libvtkInfovisLayout.so.1
test: /usr/lib64/libvtkInfovisCore.so.1
test: /usr/lib64/libvtkViewsCore.so.1
test: /usr/lib64/libvtkInteractionWidgets.so.1
test: /usr/lib64/libvtkImagingHybrid.so.1
test: /usr/lib64/libvtkIOImage.so.1
test: /usr/lib64/libvtkDICOMParser.so.1
test: /usr/lib64/libvtkIOCore.so.1
test: /usr/lib64/libvtkmetaio.so.1
test: /usr/lib64/libz.so
test: /usr/lib64/libvtkFiltersHybrid.so.1
test: /usr/lib64/libvtkImagingGeneral.so.1
test: /usr/lib64/libvtkImagingSources.so.1
test: /usr/lib64/libvtkFiltersModeling.so.1
test: /usr/lib64/libvtkInteractionStyle.so.1
test: /usr/lib64/libvtkRenderingAnnotation.so.1
test: /usr/lib64/libvtkRenderingFreeType.so.1
test: /usr/lib64/libvtkftgl.so.1
test: /usr/lib64/libfreetype.so
test: /usr/lib64/libGL.so
test: /usr/lib64/libvtkImagingColor.so.1
test: /usr/lib64/libvtkRenderingVolume.so.1
test: /usr/lib64/libvtkRenderingCore.so.1
test: /usr/lib64/libvtkFiltersExtraction.so.1
test: /usr/lib64/libvtkFiltersStatistics.so.1
test: /usr/lib64/libvtkImagingFourier.so.1
test: /usr/lib64/libvtkImagingCore.so.1
test: /usr/lib64/libvtkalglib.so.1
test: /usr/lib64/libvtkFiltersGeometry.so.1
test: /usr/lib64/libvtkFiltersSources.so.1
test: /usr/lib64/libvtkFiltersGeneral.so.1
test: /usr/lib64/libvtkFiltersCore.so.1
test: /usr/lib64/libvtkCommonExecutionModel.so.1
test: /usr/lib64/libvtkCommonComputationalGeometry.so.1
test: /usr/lib64/libvtkCommonDataModel.so.1
test: /usr/lib64/libvtkCommonMisc.so.1
test: /usr/lib64/libvtkCommonTransforms.so.1
test: /usr/lib64/libvtkCommonMath.so.1
test: /usr/lib64/libvtkCommonSystem.so.1
test: /usr/lib64/libvtkproj4.so.1
test: /usr/lib64/libvtkCommonCore.so.1
test: /usr/lib64/libvtksys.so.1
test: /usr/lib64/libpython2.7.so
test: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yxg/pcl/pcl/align_with_fpfh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: test

.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/requires: CMakeFiles/test.dir/test.cpp.o.requires

.PHONY : CMakeFiles/test.dir/requires

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /home/yxg/pcl/pcl/align_with_fpfh/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yxg/pcl/pcl/align_with_fpfh /home/yxg/pcl/pcl/align_with_fpfh /home/yxg/pcl/pcl/align_with_fpfh/build /home/yxg/pcl/pcl/align_with_fpfh/build /home/yxg/pcl/pcl/align_with_fpfh/build/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.dir/depend

