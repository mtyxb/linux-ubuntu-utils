#include <iostream>
#include "libPKG.h"

PKG_API void pkg_func()
{
  std::cout << "pkg_func()" << std::endl;
  std::cout << __cplusplus << std::endl;
}

