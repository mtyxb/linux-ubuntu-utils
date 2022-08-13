PROJECT(main)
cmake_minimum_required(VERSION 3.1)
add_executable(main main.cpp)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR}/modules/cmake)
find_package(DLL REQUIRED)
if (DLL_FOUND)
	target_include_directories(main PRIVATE ${DLL_INCLUDE_DIR})
	target_link_libraries(main ${DLL_LIBRARY})
endif(DLL_FOUND)

