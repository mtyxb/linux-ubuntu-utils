PROJECT(dll)
cmake_minimum_required(VERSION 3.1)
add_library(dll SHARED  dll.cpp)
add_compile_options(-f visibility=default)
add_compile_definitions(DLL_EXPORTS)


