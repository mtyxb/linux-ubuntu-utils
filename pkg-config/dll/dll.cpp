#include <iostream>
#include "dll.h"

DLL_API void dll_func()
{
  std::cout << "dll_func()" << std::endl;
  std::cout << __cplusplus << std::endl;
}

