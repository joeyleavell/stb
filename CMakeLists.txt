# CMakeList.txt : Top-level CMake project file, do global configuration
# and include sub-projects here.
#
cmake_minimum_required (VERSION 3.8)

project ("Stb")

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Include sub-projects.
add_subdirectory(stb_truetype)
add_subdirectory(stb_image)