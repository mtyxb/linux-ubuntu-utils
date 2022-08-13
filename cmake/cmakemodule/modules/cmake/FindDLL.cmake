find_path(DLL_INCLUDE_DIR dll.h ${CMAKE_SOURCE_DIR}/modules/include)
find_library(DLL_LIBRARY NAMES dll PATHS ${CMAKE_SOURCE_DIR}/modules/lib)
if (DLL_INCLUDE_DIR AND DLL_LIBRARY)
	set(DLL_FOUND true)
endif (DLL_INCLUDE_DIR AND DLL_LIBRARY)

