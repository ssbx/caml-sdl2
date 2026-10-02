#ifndef _CAML_SDL_SURFACE_
#define _CAML_SDL_SURFACE_

#include <SDL_surface.h>


#define Val_SDL_Surface(p) (caml_copy_nativeint((intnat) p))
#define SDL_Surface_val(v) ((SDL_Surface *) Nativeint_val(v))


#endif /* _CAML_SDL_SURFACE_ */
