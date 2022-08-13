find_path(LIBPKG_INCLUDE_DIR libPKG.h ${CMAKE_SOURCE_DIR}/modules/libPKG/include)
find_library(LIBPKG_LIBRARY NAMES PKG PATHS ${CMAKE_SOURCE_DIR}/modules/libPKG/lib)
if (LIBPKG_INCLUDE_DIR AND LIBPKG_LIBRARY)
	set(LIBPKG_FOUND true)
endif (LIBPKG_INCLUDE_DIR AND LIBPKG_LIBRARY)

