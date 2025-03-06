cmake_minimum_required(VERSION 3.20)

register_component()

# Xtensa processor architecture optimization
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
  CMAKE_ARGS -DCMAKE_SYSTEM_NAME=esp-idf
             -DCMAKE_SYSTEM_PROCESSOR=xtensa
             -DCMAKE_EXE_LINKER_FLAGS=${CMAKE_EXE_LINKER_FLAGS}
             -DCMAKE_LINKER=${CMAKE_LINKER}
             -DCMAKE_AR=${CMAKE_AR}
             -DCMAKE_NM=${CMAKE_NM}
             -DCMAKE_RANLIB=${CMAKE_RANLIB}
             -DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER)

# Make the component dependent on our build
add_dependencies(${COMPONENT_LIB} etl_build)
target_include_directories(${COMPONENT_LIB} INTERFACE ${ETL_ROOT_DIR}/include)
