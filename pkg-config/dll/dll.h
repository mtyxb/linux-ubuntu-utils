#if !defined(DLL_H)
#define DLL_H

#if defined(DLL_EXPORTS)
#warning "DLL_API defined"
#define DLL_API __attribute__((visibility("default")))
#else
#warning "DLL_API NOT  defined"
#define DLL_API
#endif

DLL_API void dll_func();

#endif

