#if !defined(PKG_H)
#define PKG_H

#if defined(PKG_EXPORTS)
#warning "PKG_API defined"
#define PKG_API __attribute__((visibility("default")))
#else
#warning "PKG_API NOT  defined"
#define PKG_API
#endif

PKG_API void pkg_func();

#endif

