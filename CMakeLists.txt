cmake_minimum_required(VERSION 3.5)
project(calculator_project)

set(SOURCE_FILES main.cpp calculator.cpp)
set(HEADER_FILES calculator.h)

add_library(calculator STATIC ${SOURCE_FILES} ${HEADER_FILES})
add_executable(calculator_app main.cpp)
target_link_libraries(calculator_app calculator)
