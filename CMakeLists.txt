cmake_minimum_required(VERSION 3.20)
project(libs_share
        VERSION     0.0.1
        LANGUAGES   C)
include(include)
add_executable(libs_share main.c)
add_library(share_lib SHARE 
            really.c 
            findme_1.c )
catch me
