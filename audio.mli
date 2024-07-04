(* OCamlSDL2 - An OCaml interface to the SDL2 library
 Copyright (C) 2013 Florent Monnier
 
 This software is provided "AS-IS", without any express or implied warranty.
 In no event will the authors be held liable for any damages arising from
 the use of this software.
 
 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it freely.
*)
(** Audio *)

(** API Doc:
  {{:http://wiki.libsdl.org/CategoryAudio}Audio category} *)

type t

type format =
  | AUDIO_U8
  | AUDIO_S8
  | AUDIO_U16LSB
  | AUDIO_S16LSB
  | AUDIO_U16MSB
  | AUDIO_S16MSB
  | AUDIO_U16
  | AUDIO_S16
  | AUDIO_S32LSB
  | AUDIO_S32MSB
  | AUDIO_S32
  | AUDIO_F32LSB
  | AUDIO_F32MSB
  | AUDIO_F32
  | AUDIO_U16SYS
  | AUDIO_S16SYS
  | AUDIO_S32SYS
  | AUDIO_F32SYS

external get_drivers :
  unit -> string array
  = "caml_SDL_GetAudioDrivers"
(** {{:http://wiki.libsdl.org/SDL_GetAudioDrivers}api doc} *)

external init : driver_name:string -> unit
  = "caml_SDL_AudioInit"
(** {{:http://wiki.libsdl.org/SDL_AudioInit}api doc} *)

external quit : unit -> unit
  = "caml_SDL_AudioQuit"
(** {{:http://wiki.libsdl.org/SDL_AudioQuit}api doc} *)

external get_current_driver : unit -> string
  = "caml_SDL_GetCurrentAudioDriver"
(** {{:http://wiki.libsdl.org/SDL_GetCurrentAudioDriver}api doc} *)

type status =
  | Stopped
  | Playing
  | Paused

external get_status : unit -> status
  = "caml_SDL_GetAudioStatus"
(** {{:http://wiki.libsdl.org/SDL_GetAudioStatus}api doc} *)

val string_of_status : status -> string

external pause : pause_on:bool -> unit
  = "caml_SDL_PauseAudio"
(** {{:http://wiki.libsdl.org/SDL_PauseAudio}api doc} *)

external lock : unit -> unit
  = "caml_SDL_LockAudio"
(** {{:http://wiki.libsdl.org/SDL_LockAudio}api doc} *)

external unlock : unit -> unit
  = "caml_SDL_UnlockAudio"
(** {{:http://wiki.libsdl.org/SDL_UnlockAudio}api doc} *)

external close : unit -> unit
  = "caml_SDL_CloseAudio"
(** {{:http://wiki.libsdl.org/SDL_CloseAudio}api doc} *)

type audio_spec
(** {{:http://wiki.libsdl.org/SDL_AudioSpec}api doc} *)

external new_audio_spec : unit -> audio_spec
  = "caml_SDL_alloc_audio_spec"

external free_audio_spec : audio_spec -> unit
  = "caml_SDL_free_audio_spec"

type audio_buffer

external load_wav : filename:string -> spec:audio_spec -> audio_buffer * int32
  = "caml_SDL_LoadWAV"
(** {{:http://wiki.libsdl.org/SDL_LoadWAV}api doc} *)

external free_wav : audio_buffer -> unit
  = "caml_SDL_FreeWAV"
(** {{:http://wiki.libsdl.org/SDL_FreeWAV}api doc} *)

type audio_device_id

external open_audio_device_simple : audio_spec -> audio_device_id
  = "caml_SDL_OpenAudioDevice_simple"
(** {{:http://wiki.libsdl.org/SDL_OpenAudioDevice}api doc} *)

external queue_audio : audio_device_id -> audio_buffer -> int32 -> unit
  = "caml_SDL_QueueAudio"
(** {{:http://wiki.libsdl.org/SDL_QueueAudio}api doc} *)

external unpause_audio_device : audio_device_id -> unit
  = "caml_SDL_UnpauseAudioDevice"
(** {{:http://wiki.libsdl.org/SDL_PauseAudioDevice}api doc} *)

external pause_audio_device : audio_device_id -> unit
  = "caml_SDL_PauseAudioDevice"
(** {{:http://wiki.libsdl.org/SDL_PauseAudioDevice}api doc} *)

external close_audio_device : audio_device_id -> unit
  = "caml_SDL_CloseAudioDevice"
(** {{:http://wiki.libsdl.org/SDL_CloseAudioDevice}api doc} *)

