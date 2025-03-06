cmake_minimum_required(VERSION 3.20)

set(EXTERNAL_COMPILE_FLAGS
    -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls
    -Wno-frame-address)
string(REPLACE ";" "|" EXTERNAL_COMPILE_FLAGS_ALT_SEP
               "${EXTERNAL_COMPILE_FLAGS}")

ExternalProject_Add(
  etl_build
  PREFIX ${CMAKE_CURRENT_BINARY_DIR}
  SOURCE_DIR ${ETL_ROOT_DIR}
  BUILD_IN_SOURCE 0
  BINARY_DIR etl
  INSTALL_COMMAND "" # Do not install to host
  LIST_SEPARATOR | # Use the alternate list separator
  CMAKE_ARGS -DCMAKE_SYSTEM_NAME=zephyr
             -DCMAKE_SYSTEM_PROCESSOR=gcc
             -DCMAKE_EXE_LINKER_FLAGS=${CMAKE_EXE_LINKER_FLAGS}
             -DCMAKE_LINKER=${CMAKE_LINKER}
             -DCMAKE_AR=${CMAKE_AR}
             -DCMAKE_NM=${CMAKE_NM}
             -DCMAKE_RANLIB=${CMAKE_RANLIB}
             -DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER)

add_dependencies(app etl_build)
target_include_directories(app PRIVATE ${ETL_ROOT_DIR}/include)
