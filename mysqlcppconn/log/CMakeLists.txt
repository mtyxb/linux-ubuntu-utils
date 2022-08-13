PROJECT(mysqltest)
cmake_minimum_required(VERSION 3.1)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)
add_executable(mysqltest main.cpp)
set(MYSQL_CONNECTOR_CPP_DIR /usr/local/mysql/connector-c++-8.0.30)
target_include_directories(mysqltest PRIVATE ${MYSQL_CONNECTOR_CPP_DIR}/include/jdbc)
target_link_directories(mysqltest PRIVATE  ${MYSQL_CONNECTOR_CPP_DIR}/lib64)
target_link_libraries(mysqltest libmysqlcppconn.so)

option(WITH_LOG "WITH_LOG enable or disable mysql connector log?" OFF)

if (WITH_LOG)
	add_compile_definitions(WITH_LOG)
endif()



