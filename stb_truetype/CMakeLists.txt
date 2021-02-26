add_definitions(-DSTB_TRUETYPE_IMPLEMENTATION)

add_library(stb_truetype STATIC "stb_truetype.cpp")

install(TARGETS stb_truetype)