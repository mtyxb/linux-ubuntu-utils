#include <iostream>
#include <limits>
#include <cstddef>
#include <iostream>
#include "dll.h"
#include "libPKG.h"

int main()
{
    std::cout << __cplusplus << std::endl;
    dll_func();   	
    pkg_func();
    return 0;
}

