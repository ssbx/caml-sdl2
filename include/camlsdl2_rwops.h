#ifndef _CAML_SDL_RWOPS_
#define _CAML_SDL_RWOPS_

#include <SDL_rwops.h>

#define Val_SDL_RWops(p) (caml_copy_nativeint((intnat) p))

#define SDL_RWops_val(v) ((SDL_RWops *) Nativeint_val(v))

#endif /* _CAML_SDL_RWOPS_ */
