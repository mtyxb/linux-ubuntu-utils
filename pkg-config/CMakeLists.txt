PROJECT(main)
cmake_minimum_required(VERSION 3.1)
add_executable(main main.cpp)

find_package(PkgConfig REQUIRED)
if (PKG_CONFIG_FOUND)
	pkg_check_modules(DLL REQUIRED IMPORTED_TARGET DLL)
	target_link_libraries(main PRIVATE PkgConfig::DLL)

	#pkg_check_modules(LIBPKG REQUIRED libPKG) 
	pkg_search_module(LIBPKG REQUIRED libPKG) 
	target_include_directories(main PRIVATE ${LIBPKG_INCLUDE_DIRS})
	target_link_directories(main PRIVATE ${LIBPKG_LIBRARY_DIRS})
	target_link_libraries(main PRIVATE ${LIBPKG_LIBRARIES})
else (PKG_CONFIG_FOUND)
	message(FATAL_ERROR "pkg-config NOT FOUND!!!")
endif (PKG_CONFIG_FOUND)

