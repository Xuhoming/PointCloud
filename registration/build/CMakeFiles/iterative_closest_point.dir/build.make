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
CMAKE_SOURCE_DIR = /home/yxg/pcl/pcl/registration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yxg/pcl/pcl/registration/build

# Include any dependencies generated for this target.
include CMakeFiles/iterative_closest_point.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/iterative_closest_point.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/iterative_closest_point.dir/flags.make

CMakeFiles/iterative_closest_point.dir/icp.cpp.o: CMakeFiles/iterative_closest_point.dir/flags.make
CMakeFiles/iterative_closest_point.dir/icp.cpp.o: ../icp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yxg/pcl/pcl/registration/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/iterative_closest_point.dir/icp.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/iterative_closest_point.dir/icp.cpp.o -c /home/yxg/pcl/pcl/registration/icp.cpp

CMakeFiles/iterative_closest_point.dir/icp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/iterative_closest_point.dir/icp.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yxg/pcl/pcl/registration/icp.cpp > CMakeFiles/iterative_closest_point.dir/icp.cpp.i

CMakeFiles/iterative_closest_point.dir/icp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/iterative_closest_point.dir/icp.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yxg/pcl/pcl/registration/icp.cpp -o CMakeFiles/iterative_closest_point.dir/icp.cpp.s

CMakeFiles/iterative_closest_point.dir/icp.cpp.o.requires:

.PHONY : CMakeFiles/iterative_closest_point.dir/icp.cpp.o.requires

CMakeFiles/iterative_closest_point.dir/icp.cpp.o.provides: CMakeFiles/iterative_closest_point.dir/icp.cpp.o.requires
	$(MAKE) -f CMakeFiles/iterative_closest_point.dir/build.make CMakeFiles/iterative_closest_point.dir/icp.cpp.o.provides.build
.PHONY : CMakeFiles/iterative_closest_point.dir/icp.cpp.o.provides

CMakeFiles/iterative_closest_point.dir/icp.cpp.o.provides.build: CMakeFiles/iterative_closest_point.dir/icp.cpp.o


# Object files for target iterative_closest_point
iterative_closest_point_OBJECTS = \
"CMakeFiles/iterative_closest_point.dir/icp.cpp.o"

# External object files for target iterative_closest_point
iterative_closest_point_EXTERNAL_OBJECTS =

iterative_closest_point: CMakeFiles/iterative_closest_point.dir/icp.cpp.o
iterative_closest_point: CMakeFiles/iterative_closest_point.dir/build.make
iterative_closest_point: /usr/lib64/libboost_system-mt.so
iterative_closest_point: /usr/lib64/libboost_filesystem-mt.so
iterative_closest_point: /usr/lib64/libboost_thread-mt.so
iterative_closest_point: /usr/lib64/libboost_date_time-mt.so
iterative_closest_point: /usr/lib64/libboost_iostreams-mt.so
iterative_closest_point: /usr/lib64/libboost_serialization-mt.so
iterative_closest_point: /usr/lib64/libboost_chrono-mt.so
iterative_closest_point: /usr/lib64/libboost_atomic-mt.so
iterative_closest_point: /usr/lib64/libboost_regex-mt.so
iterative_closest_point: /usr/local/lib64/libpcl_common.so
iterative_closest_point: /usr/local/lib64/libpcl_octree.so
iterative_closest_point: /usr/lib64/libOpenNI.so
iterative_closest_point: /usr/lib64/libfreetype.so
iterative_closest_point: /usr/lib64/libz.so
iterative_closest_point: /usr/lib64/libjpeg.so
iterative_closest_point: /usr/lib64/libpng.so
iterative_closest_point: /usr/lib64/libtiff.so
iterative_closest_point: /usr/lib64/libjsoncpp.so
iterative_closest_point: /usr/lib64/libexpat.so
iterative_closest_point: /usr/lib64/libhdf5.so
iterative_closest_point: /usr/lib64/libhdf5_hl.so
iterative_closest_point: /usr/lib64/libdl.so
iterative_closest_point: /usr/lib64/libm.so
iterative_closest_point: /usr/lib64/libnetcdf_c++.so
iterative_closest_point: /usr/lib64/libnetcdf.so
iterative_closest_point: /usr/lib64/libgl2ps.so
iterative_closest_point: /usr/lib64/libxml2.so
iterative_closest_point: /usr/lib64/libtheoraenc.so
iterative_closest_point: /usr/lib64/libtheoradec.so
iterative_closest_point: /usr/lib64/libogg.so
iterative_closest_point: /usr/lib64/libpython2.7.so
iterative_closest_point: /usr/lib/libvtkWrappingTools.a
iterative_closest_point: /usr/local/lib64/libpcl_io.so
iterative_closest_point: /usr/local/lib64/libflann_cpp_s.a
iterative_closest_point: /usr/local/lib64/libpcl_kdtree.so
iterative_closest_point: /usr/local/lib64/libpcl_search.so
iterative_closest_point: /usr/local/lib64/libpcl_sample_consensus.so
iterative_closest_point: /usr/local/lib64/libpcl_filters.so
iterative_closest_point: /usr/local/lib64/libpcl_features.so
iterative_closest_point: /usr/local/lib64/libpcl_segmentation.so
iterative_closest_point: /usr/local/lib64/libpcl_visualization.so
iterative_closest_point: /usr/lib64/libqhull_p.so
iterative_closest_point: /usr/local/lib64/libpcl_surface.so
iterative_closest_point: /usr/local/lib64/libpcl_registration.so
iterative_closest_point: /usr/local/lib64/libpcl_keypoints.so
iterative_closest_point: /usr/local/lib64/libpcl_tracking.so
iterative_closest_point: /usr/local/lib64/libpcl_recognition.so
iterative_closest_point: /usr/local/lib64/libpcl_outofcore.so
iterative_closest_point: /usr/local/lib64/libpcl_people.so
iterative_closest_point: /usr/lib64/libboost_system-mt.so
iterative_closest_point: /usr/lib64/libboost_filesystem-mt.so
iterative_closest_point: /usr/lib64/libboost_thread-mt.so
iterative_closest_point: /usr/lib64/libboost_date_time-mt.so
iterative_closest_point: /usr/lib64/libboost_iostreams-mt.so
iterative_closest_point: /usr/lib64/libboost_serialization-mt.so
iterative_closest_point: /usr/lib64/libboost_chrono-mt.so
iterative_closest_point: /usr/lib64/libboost_atomic-mt.so
iterative_closest_point: /usr/lib64/libboost_regex-mt.so
iterative_closest_point: /usr/lib64/libqhull_p.so
iterative_closest_point: /usr/lib64/libOpenNI.so
iterative_closest_point: /usr/local/lib64/libflann_cpp_s.a
iterative_closest_point: /usr/lib64/libfreetype.so
iterative_closest_point: /usr/lib64/libz.so
iterative_closest_point: /usr/lib64/libjpeg.so
iterative_closest_point: /usr/lib64/libpng.so
iterative_closest_point: /usr/lib64/libtiff.so
iterative_closest_point: /usr/lib64/libvtkDomainsChemistry.so.1
iterative_closest_point: /usr/lib64/libjsoncpp.so
iterative_closest_point: /usr/lib64/libexpat.so
iterative_closest_point: /usr/lib64/libvtkFiltersFlowPaths.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersGeneric.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersHyperTree.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersParallelImaging.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersProgrammable.so.1
iterative_closest_point: /usr/lib64/libvtkvtkFiltersSMP.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersSelection.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersVerdict.so.1
iterative_closest_point: /usr/lib64/libvtkverdict.so.1
iterative_closest_point: /usr/lib64/libvtkGUISupportQtOpenGL.so.1
iterative_closest_point: /usr/lib64/libvtkGUISupportQtSQL.so.1
iterative_closest_point: /usr/lib64/libvtkIOSQL.so.1
iterative_closest_point: /usr/lib64/libvtksqlite.so.1
iterative_closest_point: /usr/lib64/libvtkGUISupportQtWebkit.so.1
iterative_closest_point: /usr/lib64/libvtkViewsQt.so.1
iterative_closest_point: /usr/lib64/libvtkIOAMR.so.1
iterative_closest_point: /usr/lib64/libhdf5.so
iterative_closest_point: /usr/lib64/libhdf5_hl.so
iterative_closest_point: /usr/lib64/libdl.so
iterative_closest_point: /usr/lib64/libm.so
iterative_closest_point: /usr/lib64/libvtkIOEnSight.so.1
iterative_closest_point: /usr/lib64/libvtkIOExodus.so.1
iterative_closest_point: /usr/lib64/libnetcdf_c++.so
iterative_closest_point: /usr/lib64/libnetcdf.so
iterative_closest_point: /usr/lib64/libvtkIOExport.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingGL2PS.so.1
iterative_closest_point: /usr/lib64/libgl2ps.so
iterative_closest_point: /usr/lib64/libvtkIOImport.so.1
iterative_closest_point: /usr/lib64/libvtkIOInfovis.so.1
iterative_closest_point: /usr/lib64/libxml2.so
iterative_closest_point: /usr/lib64/libvtkIOLSDyna.so.1
iterative_closest_point: /usr/lib64/libvtkIOMINC.so.1
iterative_closest_point: /usr/lib64/libvtkIOMovie.so.1
iterative_closest_point: /usr/lib64/libtheoraenc.so
iterative_closest_point: /usr/lib64/libtheoradec.so
iterative_closest_point: /usr/lib64/libogg.so
iterative_closest_point: /usr/lib64/libvtkIOPLY.so.1
iterative_closest_point: /usr/lib64/libvtkIOParallel.so.1
iterative_closest_point: /usr/lib64/libvtkIOVideo.so.1
iterative_closest_point: /usr/lib64/libvtkImagingMath.so.1
iterative_closest_point: /usr/lib64/libvtkImagingMorphological.so.1
iterative_closest_point: /usr/lib64/libvtkImagingStatistics.so.1
iterative_closest_point: /usr/lib64/libvtkImagingStencil.so.1
iterative_closest_point: /usr/lib64/libvtkInteractionImage.so.1
iterative_closest_point: /usr/lib64/libpython2.7.so
iterative_closest_point: /usr/lib64/libvtkRenderingFreeTypeOpenGL.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingImage.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingLIC.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingLOD.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingQt.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingVolumeAMR.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingVolumeOpenGL.so.1
iterative_closest_point: /usr/lib64/libvtkViewsContext2D.so.1
iterative_closest_point: /usr/lib64/libvtkViewsGeovis.so.1
iterative_closest_point: /usr/lib64/libvtkWrappingPython27Core.so.1
iterative_closest_point: /usr/lib/libvtkWrappingTools.a
iterative_closest_point: /usr/local/lib64/libpcl_common.so
iterative_closest_point: /usr/local/lib64/libpcl_octree.so
iterative_closest_point: /usr/local/lib64/libpcl_io.so
iterative_closest_point: /usr/local/lib64/libpcl_kdtree.so
iterative_closest_point: /usr/local/lib64/libpcl_search.so
iterative_closest_point: /usr/local/lib64/libpcl_sample_consensus.so
iterative_closest_point: /usr/local/lib64/libpcl_filters.so
iterative_closest_point: /usr/local/lib64/libpcl_features.so
iterative_closest_point: /usr/local/lib64/libpcl_segmentation.so
iterative_closest_point: /usr/local/lib64/libpcl_visualization.so
iterative_closest_point: /usr/local/lib64/libpcl_surface.so
iterative_closest_point: /usr/local/lib64/libpcl_registration.so
iterative_closest_point: /usr/local/lib64/libpcl_keypoints.so
iterative_closest_point: /usr/local/lib64/libpcl_tracking.so
iterative_closest_point: /usr/local/lib64/libpcl_recognition.so
iterative_closest_point: /usr/local/lib64/libpcl_outofcore.so
iterative_closest_point: /usr/local/lib64/libpcl_people.so
iterative_closest_point: /usr/lib64/libtheoraenc.so
iterative_closest_point: /usr/lib64/libtheoradec.so
iterative_closest_point: /usr/lib64/libogg.so
iterative_closest_point: /usr/lib64/libvtkFiltersParallel.so.1
iterative_closest_point: /usr/lib64/libvtkexoIIc.so.1
iterative_closest_point: /usr/lib64/libnetcdf_c++.so
iterative_closest_point: /usr/lib64/libnetcdf.so
iterative_closest_point: /usr/lib64/libvtkIONetCDF.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersTexture.so.1
iterative_closest_point: /usr/lib64/libvtkGUISupportQt.so.1
iterative_closest_point: /usr/lib64/qt4/libQtGui.so
iterative_closest_point: /usr/lib64/qt4/libQtNetwork.so
iterative_closest_point: /usr/lib64/qt4/libQtCore.so
iterative_closest_point: /usr/lib64/libvtkFiltersAMR.so.1
iterative_closest_point: /usr/lib64/libvtkParallelCore.so.1
iterative_closest_point: /usr/lib64/libvtkIOLegacy.so.1
iterative_closest_point: /usr/lib64/libvtkViewsInfovis.so.1
iterative_closest_point: /usr/lib64/libvtkChartsCore.so.1
iterative_closest_point: /usr/lib64/libvtkCommonColor.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingContext2D.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersImaging.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingLabel.so.1
iterative_closest_point: /usr/lib64/libvtkGeovisCore.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingOpenGL.so.1
iterative_closest_point: /usr/lib64/libGLU.so
iterative_closest_point: /usr/lib64/libSM.so
iterative_closest_point: /usr/lib64/libICE.so
iterative_closest_point: /usr/lib64/libX11.so
iterative_closest_point: /usr/lib64/libXext.so
iterative_closest_point: /usr/lib64/libXt.so
iterative_closest_point: /usr/lib64/libvtkIOXML.so.1
iterative_closest_point: /usr/lib64/libvtkIOGeometry.so.1
iterative_closest_point: /usr/lib64/libvtkIOXMLParser.so.1
iterative_closest_point: /usr/lib64/libvtkInfovisLayout.so.1
iterative_closest_point: /usr/lib64/libvtkInfovisCore.so.1
iterative_closest_point: /usr/lib64/libvtkViewsCore.so.1
iterative_closest_point: /usr/lib64/libvtkInteractionWidgets.so.1
iterative_closest_point: /usr/lib64/libvtkImagingHybrid.so.1
iterative_closest_point: /usr/lib64/libvtkIOImage.so.1
iterative_closest_point: /usr/lib64/libvtkDICOMParser.so.1
iterative_closest_point: /usr/lib64/libvtkIOCore.so.1
iterative_closest_point: /usr/lib64/libvtkmetaio.so.1
iterative_closest_point: /usr/lib64/libz.so
iterative_closest_point: /usr/lib64/libvtkFiltersHybrid.so.1
iterative_closest_point: /usr/lib64/libvtkImagingGeneral.so.1
iterative_closest_point: /usr/lib64/libvtkImagingSources.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersModeling.so.1
iterative_closest_point: /usr/lib64/libvtkInteractionStyle.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingAnnotation.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingFreeType.so.1
iterative_closest_point: /usr/lib64/libvtkftgl.so.1
iterative_closest_point: /usr/lib64/libfreetype.so
iterative_closest_point: /usr/lib64/libGL.so
iterative_closest_point: /usr/lib64/libvtkImagingColor.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingVolume.so.1
iterative_closest_point: /usr/lib64/libvtkRenderingCore.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersExtraction.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersStatistics.so.1
iterative_closest_point: /usr/lib64/libvtkImagingFourier.so.1
iterative_closest_point: /usr/lib64/libvtkImagingCore.so.1
iterative_closest_point: /usr/lib64/libvtkalglib.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersGeometry.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersSources.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersGeneral.so.1
iterative_closest_point: /usr/lib64/libvtkFiltersCore.so.1
iterative_closest_point: /usr/lib64/libvtkCommonExecutionModel.so.1
iterative_closest_point: /usr/lib64/libvtkCommonComputationalGeometry.so.1
iterative_closest_point: /usr/lib64/libvtkCommonDataModel.so.1
iterative_closest_point: /usr/lib64/libvtkCommonMisc.so.1
iterative_closest_point: /usr/lib64/libvtkCommonTransforms.so.1
iterative_closest_point: /usr/lib64/libvtkCommonMath.so.1
iterative_closest_point: /usr/lib64/libvtkCommonSystem.so.1
iterative_closest_point: /usr/lib64/libvtkproj4.so.1
iterative_closest_point: /usr/lib64/libvtkCommonCore.so.1
iterative_closest_point: /usr/lib64/libvtksys.so.1
iterative_closest_point: /usr/lib64/libpython2.7.so
iterative_closest_point: CMakeFiles/iterative_closest_point.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yxg/pcl/pcl/registration/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable iterative_closest_point"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iterative_closest_point.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/iterative_closest_point.dir/build: iterative_closest_point

.PHONY : CMakeFiles/iterative_closest_point.dir/build

CMakeFiles/iterative_closest_point.dir/requires: CMakeFiles/iterative_closest_point.dir/icp.cpp.o.requires

.PHONY : CMakeFiles/iterative_closest_point.dir/requires

CMakeFiles/iterative_closest_point.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/iterative_closest_point.dir/cmake_clean.cmake
.PHONY : CMakeFiles/iterative_closest_point.dir/clean

CMakeFiles/iterative_closest_point.dir/depend:
	cd /home/yxg/pcl/pcl/registration/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yxg/pcl/pcl/registration /home/yxg/pcl/pcl/registration /home/yxg/pcl/pcl/registration/build /home/yxg/pcl/pcl/registration/build /home/yxg/pcl/pcl/registration/build/CMakeFiles/iterative_closest_point.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/iterative_closest_point.dir/depend

