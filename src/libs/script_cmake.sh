#!/bin/bash

# Configure & Generate
cmake -G "Unix Makefiles" -S src_lib -B buildtree
# Running the build
cmake --build ./buildtree && ./buildtree/run_me
