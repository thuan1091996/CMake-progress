cmake_minimum_required(VERSION 3.20)

project(  libs_share
          VERSION 0.0.1
          LANGUAGES C)

## Systems variables
set(VERBOSE true)
set(BUILD_SHARED_LIBS false) # Library with no type explicitly specified will be built as static library
set(TEST_VAR false)


if(${TEST_VAR})
  ## Variables
  set(GREETING_MSG "Hello there!! ")
  message(STATUS "****************************** ${GREETING_MSG} ******************************")
  unset(GREETING_MSG)
  message(STATUS "There should be nothing here: ${GREETING_MSG}")

  ## List variable
  set(LOG_ARRAY a b c)
  list(APPEND LOG_ARRAY d e f)
  message(STATUS "Log array: ${LOG_ARRAY}")
  foreach(INDEX IN LISTS LOG_ARRAY) # At the beginning of each iteration the variable <loop_var>
                                    # will be set to the value of the current item
      message(STATUS "${INDEX}")
  endforeach()

  # Reference variable
  set(CONCATE_VAR "ARRAY") # Append LOG_ to get LOG_ARRAY
  message(STATUS "Reference variable: " ${LOG_${CONCATE_VAR}} )

  message(STATUS"****************************************************************************")
endif(${TEST_VAR})

# Targets 
set(SRC_FILES findme_1.c really.c main.c)
add_executable(Main_Executable ${SRC_FILES})
cmake_path(GET CMAKE_CURRENT_SOURCE_DIR PARENT_PATH PROJECT_DIR)

add_subdirectory(${PROJECT_DIR}/libs/src_lib ${PROJECT_DIR}/libs/buildtree)

target_include_directories(Main_Executable PRIVATE ${PROJECT_DIR}/inc)
message(STATUS "Including directory: ${PROJECT_DIR}/inc_lib")

target_link_libraries(Main_Executable PUBLIC greeting_lib)
message(STATUS "Building: ${CMAKE_CURRENT_LIST_FILE}")


# target_link_libraries(Main_Executable libgreeting libs)

# Includes

# add_executable(libs_share main.c) add_library(share_lib SHARED really.c
# findme_1.c)
