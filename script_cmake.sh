#!/bin/bash

# Configure & Generate
cmake -G "Unix Makefiles" -S src_files -B buildtree
# Running the build
echo  Hi #"Current directory ${PWD}"
cmake --build ./buildtree && ./buildtree/Main_Executable
