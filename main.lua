--This is the mais file. Put here only whats is the root to other things, just to know the order that they are processed.

--All the requires must be called in this file.
--The require sequence is important. Dont modify it.
--If you want to make any mod for this project, i recommend to create a folder named "mods", put your mod fiels theres and require then here.

require "defs"
require "utils"
require "loads"
require "controls"
require "gui"
require "notesGen"
require "coreAlterations"

function love.load()
  loadPiano()
  generateSenoidalNaturalNotes(44100, 16, 1)
  generateSenoidalSustenidoNotes(44100, 16, 1)
end

function love.update(dt)

  fadeInNaturalNotes(dt)
  fadeOutNaturalNotes(dt)
  fadeInSustenidoNotes(dt)
  fadeOutSustenidoNotes(dt)
  mouseDown()
end

function love.draw()
  drawNudeCanvas()
  drawKeys()
  drawUpperPanelButtons()
end