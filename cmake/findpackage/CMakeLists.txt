project(findpackage LANGUAGES CXX)
cmake_minimum_required(VERSION 3.1)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCES 
       	main.cpp 
	mainwidget.cpp	 	   
)
add_executable(findpackage ${SOURCES})

find_package(Qt5 REQUIRED COMPONENTS Core Widgets)
if (Qt5_FOUND)
	target_link_libraries(findpackage ${Qt5Core_LIBRARIES})
	target_link_libraries(findpackage ${Qt5Widgets_LIBRARIES})
endif(Qt5_FOUND)

