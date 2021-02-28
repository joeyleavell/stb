add_definitions(-DSTB_IMAGE_IMPLEMENTATION)

add_library(stb_image STATIC "stb_image.cpp")

install(TARGETS stb_image DESTINATION .)