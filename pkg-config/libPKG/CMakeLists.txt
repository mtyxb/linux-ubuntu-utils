PROJECT(PKG)
cmake_minimum_required(VERSION 3.1)
add_library(PKG SHARED  libPKG.cpp)
add_compile_options(-f visibility=hidden)
add_compile_definitions(PKG_EXPORTS)


