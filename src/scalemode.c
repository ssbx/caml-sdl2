/* OCamlSDL2 - An OCaml interface to the SDL2 library
 Copyright (C) 2013 Florent Monnier

 This software is provided "AS-IS", without any express or implied warranty.
 In no event will the authors be held liable for any damages arising from
 the use of this software.

 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it freely.
*/
#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/alloc.h>
#include <caml/fail.h>

#include <SDL_render.h>

#define Val_Sdl_ScaleMode_Nearest    Val_int(0)
#define Val_Sdl_ScaleMode_Linear     Val_int(1)
#define Val_Sdl_ScaleMode_Best       Val_int(2)
#define Val_Sdl_ScaleMode_Invalid    Val_int(5)

value
Val_SDL_ScaleMode(SDL_ScaleMode scale_mode)
{
    switch (scale_mode) {
        case SDL_ScaleModeNearest:  return Val_Sdl_ScaleMode_Nearest;
        case SDL_ScaleModeLinear: return Val_Sdl_ScaleMode_Linear;
        case SDL_ScaleModeBest:   return Val_Sdl_ScaleMode_Best;
        default:  return Val_Sdl_ScaleMode_Invalid;
    }
    caml_failwith("SdlScaleMode.t");
}

const SDL_ScaleMode ocaml_SDL_ScaleMode_table[] = {
    SDL_ScaleModeNearest,
    SDL_ScaleModeLinear,
    SDL_ScaleModeBest,
};

/* vim: set ts=4 sw=4 et: */
