#!/bin/bash

# Configure & Generate
cmake -G "Unix Makefiles" -S src_files -B buildtree
# Running the build
cmake --build ./buildtree && ./buildtree/Main_Executable
