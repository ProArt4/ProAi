cmake_minimum_required(VERSION 3.10)
project(aiimagegen)

set(CMAKE_CXX_STANDARD 17)

include_directories(include)

add_library(aiimagegen SHARED
    src/aiimagegen.cpp
    src/QnnModelRunner.cpp
)

# Link Qualcomm NPU SDK libraries here
# target_link_libraries(aiimagegen QnnSdkLib)
