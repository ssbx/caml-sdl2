#ifndef _CAML_SDL_RENDERER_
#define _CAML_SDL_RENDERER_

#include <SDL_render.h>

/* SDL_Renderer val */
#define Val_SDL_Renderer(p) (caml_copy_nativeint((intnat) p))

#define SDL_Renderer_val(v) ((SDL_Renderer *) Nativeint_val(v))


/* SDL_Texture val */
#define Val_SDL_Texture(p) (caml_copy_nativeint((intnat) p))
#define SDL_Texture_val(v) ((SDL_Texture *) Nativeint_val(v))


/* SDL_TextureAccess val */
value Val_Sdl_textureaccess_t(int texture_access);

extern const int caml_sdl_textureaccess_table[];
#define Sdl_textureaccess_t(v) \
    caml_sdl_textureaccess_table[Int_val(v)]

#endif /* _CAML_SDL_RENDERER_ */
