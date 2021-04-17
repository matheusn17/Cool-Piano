--Place the static values here.
--They are not really static, but its a good form of organization.
--All variables here are under global scope of the Lua project.
--Note that they are not in ALL CAPS.

screen_width = love.graphics.getWidth()
screen_height = love.graphics.getHeight()

--note{nameString, frequencie, isActive, sound_source, isGuiActive}
natural_notes = {
  {"C3", 130.81, false, sound_source, false},
  {"D", 146.83, false, sound_source, false},
  {"E", 164.81, false, sound_source, false},
  {"F", 174.62, false, sound_source, false},
  {"G", 196, false, sound_source, false},
  {"A", 220, false, sound_source, false},
  {"B", 246.96, false, sound_source, false},

  {"C4", 261.63, false, sound_source, false},
  {"D", 293.66, false, sound_source, false},
  {"E", 329.63, false, sound_source, false},
  {"F", 349.23, false, sound_source, false},
  {"G", 392, false, sound_source, false},
  {"A", 440, false, sound_source, false},
  {"B", 493.88, false, sound_source, false}
}

sustenido_notes = {
  {"C#", 138.59, false, sound_source, false},
  {"D#", 155.56, false, sound_source, false},
  {"E#", 174.62, false, sound_source, false},
  {"F#", 185, false, sound_source, false},
  {"G#", 207.65, false, sound_source, false},
  {"A#", 233.08, false, sound_source, false},
  {"B#", 261.63, false, sound_source, false},

  {"C#", 277.18, false, sound_source, false},
  {"D#", 311.13, false, sound_source, false},
  {"E#", 349.23, false, sound_source, false},
  {"F#", 369.99, false, sound_source, false},
  {"G#", 415.30, false, sound_source, false},
  {"A#", 466.16, false, sound_source, false},
  {"B#", 523.26, false, sound_source, false}
}

notes_count = #natural_notes

--buttons
buttons = {
  shift_up_button = {
    "Shift Up",
    push_state = false,
    color = {0, 0.5, 1, 1},
    size_x = screen_width * 0.075,
    size_y = screen_width * 0.075,
    pos_x = screen_width - (screen_width * 0.225),
    pos_y = (screen_height * 0.2) - ((screen_width * 0.075) / 2)
  },
  shift_down_button = {
    "Shift Down",
    push_state = false,
    color = {0, 0.5, 1, 1},
    size_x = screen_width * 0.075,
    size_y = screen_width * 0.075,
    pos_x = screen_width - (screen_width * 0.125),
    pos_y = (screen_height * 0.2) - ((screen_width * 0.075) / 2)
  }
}

--visual/color related values

default_root_color = {0, 0, 0, 1}
default_natural_keys_color = {0.98, 0.98, 0.98, 1}
default_sustenido_keys_color = {0.05, 0.05, 0.05, 1}
default_upper_panel_color = {0.1, 0.1, 0.1, 1}
default_button_color = {0.7, 0.7, 0.35, 1}
default_bar_color = {0.4, 0.4, 0.4, 1}
default_font_color = {0, 0, 0, 1}

visual = {}