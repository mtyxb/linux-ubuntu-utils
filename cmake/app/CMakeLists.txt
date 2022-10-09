PROJECT(main)
cmake_minimum_required(VERSION 3.1)
add_executable(main main.cpp)
target_include_directories(main PUBLIC dll)
add_subdirectory(dll dll)

target_compile_options(main PRIVATE "SHELL:--param ggc-min-heapsize=4096")
target_compile_options(main PRIVATE "SHELL:--param ggc-min-expand=4096")
target_link_libraries(main dll)

