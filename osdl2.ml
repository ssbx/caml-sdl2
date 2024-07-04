
module Sdl = struct

  include Init
  include Quit

  external get_platform : unit -> string = "caml_SDL_GetPlatform"

  module Rect = Rect
  module PixelFormat = PixelFormat
  module TextureAccess = TextureAccess
  module Keymod = Keymod
  module Keycode = Keycode
  module Scancode = Scancode
  module Window = Window
  module BlendMode = BlendMode
  module Error = Error
  module Pixel = Pixel
  module Surface = Surface
  module Surface_ba = Surface_ba
  module Timer = Timer
  module Event = Event
  module Haptic = Haptic
  module Version = Version
  module Texture = Texture
  module Render = Render
  module RWops = Rwops
  module Power = Power
  module Mouse = Mouse
  module Keyboard = Keyboard
  module Audio = Audio
  module Clipboard = Clipboard
  module CPUinfo = Cpuinfo
  module Filesystem = Filesystem
  module Joystick = Joystick
  module GL = Gl

end
