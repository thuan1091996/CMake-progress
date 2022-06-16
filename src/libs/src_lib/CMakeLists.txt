cmake_minimum_required(VERSION 3.20)
project(libs_build)

cmake_path(GET CMAKE_CURRENT_SOURCE_DIR PARENT_PATH PROJECT_DIR)
message("Building library: ${PROJECT_SOURCE_DIR}")
message("Including directory: ${PROJECT_DIR}/inc_lib")
add_executable(test_lib
               greeting.c
               test_shared_lib.c)

add_library(greeting_lib STATIC greeting.c)

target_include_directories(test_lib PUBLIC ${PROJECT_DIR}/inc_lib)
target_include_directories(greeting_lib PUBLIC ${PROJECT_DIR}/inc_lib)
