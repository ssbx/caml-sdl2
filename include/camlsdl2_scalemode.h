#ifndef _CAML_SDL_SCALEMODE_
#define _CAML_SDL_SCALEMODE_

#include <SDL_render.h>

value Val_SDL_ScaleMode(SDL_ScaleMode scale_mode);

extern const SDL_ScaleMode ocaml_SDL_ScaleMode_table[];

#define SDL_ScaleMode_val(scale_mode) \
    ocaml_SDL_ScaleMode_table[Long_val(scale_mode)]

#endif /* _CAML_SDL_SCALEMODE_ */
