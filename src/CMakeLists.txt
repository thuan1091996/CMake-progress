cmake_minimum_required(VERSION 3.20)
project(
  libs_share
  VERSION 0.0.1
  LANGUAGES C)
## Variables
set(VERBOSE true)
set(BUILD_SHARED_LIBS false) # Library with no type explicitly specified will be
                             # built as static library
set(GREETING_MSG "Hello there!! ")
message(STATUS "****************************** ${GREETING_MSG} ******************************")
unset(GREETING_MSG)
message(STATUS "There should be nothing here: ${GREETING_MSG} \r\n")

# List variable
set(LOG_ARRAY a b c)
list(APPEND LOG_ARRAY d e f)
message(STATUS "Log array: ${LOG_ARRAY}")
foreach(INDEX IN LISTS LOG_ARRAY) # At the beginning of each iteration the variable <loop_var> will be set to the value of the current item
    message(STATUS "${INDEX}")
endforeach()

# Reference variable
set(CONCATE_VAR "ARRAY") # Append LOG_ to get LOG_ARRAY
    message(STATUS "Reference variable: "${LOG_${CONCATE_VAR}})

message(STATUS "****************************************************************************")

## Targets 
# add_executable(Main_Executable
#               main.c)
# 
# add_library(libgreeting
# greeting.c )
# 
# add_library(libs 
#             findme_1.c
#             really.c)
# 
# target_link_libraries(Main_Executable libgreeting libs)

# Includes

# add_executable(libs_share main.c)
# add_library(share_lib SHARED really.c findme_1.c)
