--This file is native from Love2d, it configures the program on startup.
--Note that it's not referencied with a "require" on the main file.
--Its because Love2d handles it separately.
--So, dont delete it.

function love.conf(t)
  t.identity = nil
  t.appendidentity = false
  t.version = "11.3"
  t.console = false
  t.accelerometerjoystick = true
  t.externalstorage = false
  t.gammacorrect = false

  t.audio.mic = false
  t.audio.mixwithsystem = true

  t.window.title = "Cool Piano"
  t.window.icon = nil
  t.window.width = 600
  t.window.height = 250
  t.window.borderless = false
  t.window.resizable = false
  t.window.minwidth = 200                --for future moddifications
  t.window.minheight = 150               --for future moddifications
  t.window.fullscreen = false
  t.window.fullscreentype = "desktop"
  t.window.usedpiscale = true
  t.window.vsync = 0
  t.window.msaa = 0
  t.window.depth = nil
  t.window.stencil = nil
  t.window.display = 1
  t.window.highdpi = false
  t.window.x = nil
  t.window.y = nil

  t.modules.audio = true
  t.modules.data = true
  t.modules.event = true
  t.modules.font = true
  t.modules.graphics = true
  t.modules.image = false              --image manupulation disabled
  t.modules.joystick = false           --joystick disabled
  t.modules.keyboard = true
  t.modules.math = false               --system independent mathematic functions disabled
  t.modules.mouse = true
  t.modules.physics = false            --physics disabled(and probabily will not be used for a long time)
  t.modules.sound = true
  t.modules.system = true
  t.modules.thread = false             --thread control disabled
  t.modules.timer = true
  t.modules.touch = true               --yes, the APP work with touch devices, even using mouse input form
  t.modules.video = false              --video decode and streaming disabled
  t.modules.window = true
end