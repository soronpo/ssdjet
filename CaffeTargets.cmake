# Generated by CMake 3.5.1

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget caffe proto)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target caffe
add_library(caffe SHARED IMPORTED)

# Create imported target proto
add_library(proto STATIC IMPORTED)

# Import target "caffe" for configuration "Debug"
set_property(TARGET caffe APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(caffe PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "proto;proto;/usr/lib/aarch64-linux-gnu/libboost_system.so;/usr/lib/aarch64-linux-gnu/libboost_thread.so;/usr/lib/aarch64-linux-gnu/libboost_filesystem.so;/usr/lib/aarch64-linux-gnu/libboost_regex.so;/usr/lib/aarch64-linux-gnu/libboost_chrono.so;/usr/lib/aarch64-linux-gnu/libboost_date_time.so;/usr/lib/aarch64-linux-gnu/libboost_atomic.so;/usr/lib/aarch64-linux-gnu/libpthread.so;-lpthread;/usr/lib/aarch64-linux-gnu/libglog.so;/usr/lib/aarch64-linux-gnu/libgflags.so;/usr/lib/aarch64-linux-gnu/libprotobuf.so;-lpthread;/usr/lib/aarch64-linux-gnu/hdf5/serial/lib/libhdf5_hl.so;/usr/lib/aarch64-linux-gnu/hdf5/serial/lib/libhdf5.so;/usr/lib/aarch64-linux-gnu/libpthread.so;/usr/lib/aarch64-linux-gnu/libsz.so;/usr/lib/aarch64-linux-gnu/libz.so;/usr/lib/aarch64-linux-gnu/libdl.so;/usr/lib/aarch64-linux-gnu/libm.so;/usr/lib/aarch64-linux-gnu/hdf5/serial/lib/libhdf5_hl.so;/usr/lib/aarch64-linux-gnu/hdf5/serial/lib/libhdf5.so;/usr/lib/aarch64-linux-gnu/libpthread.so;/usr/lib/aarch64-linux-gnu/libsz.so;/usr/lib/aarch64-linux-gnu/libz.so;/usr/lib/aarch64-linux-gnu/libdl.so;/usr/lib/aarch64-linux-gnu/libm.so;/usr/lib/aarch64-linux-gnu/liblmdb.so;/usr/lib/aarch64-linux-gnu/libleveldb.so;/usr/lib/aarch64-linux-gnu/libsnappy.so;/usr/local/cuda/lib64/libcudart.so;/usr/local/cuda/lib64/libcurand.so;/usr/local/cuda/lib64/libcublas.so;/usr/lib/aarch64-linux-gnu/libcudnn.so;opencv_core;opencv_highgui;opencv_imgproc;/usr/lib/liblapack.so;/usr/lib/libcblas.so;/usr/lib/libatlas.so;/usr/lib/aarch64-linux-gnu/libpython2.7.so;/usr/lib/aarch64-linux-gnu/libboost_python.so"
  IMPORTED_LOCATION_DEBUG "/home/ubuntu/caffe/lib/libcaffe-d.so.1.0.0-rc3"
  IMPORTED_SONAME_DEBUG "libcaffe-d.so.1.0.0-rc3"
  )

# Import target "proto" for configuration "Debug"
set_property(TARGET proto APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(proto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/home/ubuntu/caffe/lib/libproto-d.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
