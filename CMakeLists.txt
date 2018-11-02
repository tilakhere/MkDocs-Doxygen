cmake_minimum_required (VERSION 3.0)
# use c++ 14
set (CMAKE_CXX_STANDARD 14)

# project name
project(Sample)

# autocomplete for YouCompleteMe needs commands to be exported
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# set a default build type if none was specified
set(default_build_type "Release")
if (NOT CMAKE_BUILD_TYPE)
    message(STATUS "Setting build type to '${default_build_type}' since none was specified.")
    set(CMAKE_BUILD_TYPE "${default_build_type}")
endif()
set(CMAKE_CXX_FLAGS_DEBUG "-g")

# gather list of source files
file(GLOB_RECURSE sources "src/*.cc")

list(REMOVE_ITEM sources ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cc)

#feat library
add_library(sample_lib SHARED ${sources})

# executables

#feat executable
add_executable(sample src/main.cc)

target_link_libraries(sample)
