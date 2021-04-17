--This file deals with the controls and its relateds.
--Please, note that love.mousepressed() and love.mousereleased() have different uses.

function love.keypressed(key)

  if key == "tab" then
    local state = not love.mouse.isGrabbed()
    love.mouse.setGrabbed(state)
  end

--first half
  if key == 'z' then
    natural_notes[1][3] = "starting"
    natural_notes[1][4]:play()
    natural_notes[1][5] = true
  end

  if key == 'x' then
    natural_notes[2][3] = "starting"
    natural_notes[2][4]:play()
    natural_notes[2][5] = true
  end


  if key == 'c' then
    natural_notes[3][3] = "starting"
    natural_notes[3][4]:play()
    natural_notes[3][5] = true
  end


  if key == 'v' then
    natural_notes[4][3] = "starting"
    natural_notes[4][4]:play()
    natural_notes[4][5] = true
  end


  if key == 'b' then
    natural_notes[5][3] = "starting"
    natural_notes[5][4]:play()
    natural_notes[5][5] = true
  end


  if key == 'n' then
    natural_notes[6][3] = "starting"
    natural_notes[6][4]:play()
    natural_notes[6][5] = true
  end


  if key == 'm' then
    natural_notes[7][3] = "starting"
    natural_notes[7][4]:play()
    natural_notes[7][5] = true
  end


  ------------------------------------
  ------------------------------------


  --second half


  if key == 'w' then
    natural_notes[8][3] = "starting"
    natural_notes[8][4]:play()
    natural_notes[8][5] = true
  end

  if key == 'e' then
    natural_notes[9][3] = "starting"
    natural_notes[9][4]:play()
    natural_notes[9][5] = true
  end


  if key == 'r' then
    natural_notes[10][3] = "starting"
    natural_notes[10][4]:play()
    natural_notes[10][5] = true
  end


  if key == 't' then
    natural_notes[11][3] = "starting"
    natural_notes[11][4]:play()
    natural_notes[11][5] = true
  end


  if key == 'y' then
    natural_notes[12][3] = "starting"
    natural_notes[12][4]:play()
    natural_notes[12][5] = true
  end


  if key == 'u' then
    natural_notes[13][3] = "starting"
    natural_notes[13][4]:play()
    natural_notes[13][5] = true
  end


  if key == 'i' then
    natural_notes[14][3] = "starting"
    natural_notes[14][4]:play()
    natural_notes[14][5] = true
  end


  --sustenido notes first half

  if key == 's' then
    sustenido_notes[1][3] = "starting"
    sustenido_notes[1][4]:play()
    sustenido_notes[1][5] = true
  end
  if key == 'd' then
    sustenido_notes[2][3] = "starting"
    sustenido_notes[2][4]:play()
    sustenido_notes[2][5] = true
  end
  if key == 'g' then
    sustenido_notes[4][3] = "starting"
    sustenido_notes[4][4]:play()
    sustenido_notes[4][5] = true
  end
  if key == 'h' then
    sustenido_notes[5][3] = "starting"
    sustenido_notes[5][4]:play()
    sustenido_notes[5][5] = true
  end
  if key == 'j' then
    sustenido_notes[6][3] = "starting"
    sustenido_notes[6][4]:play()
    sustenido_notes[6][5] = true
  end

  --sustenido notes second half

  if key == '3' then
    sustenido_notes[8][3] = "starting"
    sustenido_notes[8][4]:play()
    sustenido_notes[8][5] = true
  end
  if key == '4' then
    sustenido_notes[9][3] = "starting"
    sustenido_notes[9][4]:play()
    sustenido_notes[9][5] = true
  end
  if key == '6' then
    sustenido_notes[11][3] = "starting"
    sustenido_notes[11][4]:play()
    sustenido_notes[11][5] = true
  end
  if key == '7' then
    sustenido_notes[12][3] = "starting"
    sustenido_notes[12][4]:play()
    sustenido_notes[12][5] = true
  end
  if key == '8' then
    sustenido_notes[13][3] = "starting"
    sustenido_notes[13][4]:play()
    sustenido_notes[13][5] = true
  end






  --misc

  if key == 'o' then
    keyShiftUp()
  end

  if key == 'p' then
    keyShiftDown()
  end

end

function love.keyreleased(key)

  --first half

  if key == 'z' then
    natural_notes[1][3] = "stoping"
    natural_notes[1][5] = false
  end

  if key == 'x' then
    natural_notes[2][3] = "stoping"
    natural_notes[2][5] = false
  end


  if key == 'c' then
    natural_notes[3][3] = "stoping"
    natural_notes[3][5] = false
  end

  if key == 'v' then
    natural_notes[4][3] = "stoping"
    natural_notes[4][5] = false
  end

  if key == 'b' then
    natural_notes[5][3] = "stoping"
    natural_notes[5][5] = false
  end

  if key == 'n' then
    natural_notes[6][3] = "stoping"
    natural_notes[6][5] = false
  end

  if key == 'm' then
    natural_notes[7][3] = "stoping"
    natural_notes[7][5] = false
  end


  ------------------------------------
  ------------------------------------


  --second half


  if key == 'w' then
    natural_notes[8][3] = "stoping"
    natural_notes[8][5] = false
  end

  if key == 'e' then
    natural_notes[9][3] = "stoping"
    natural_notes[9][5] = false
  end


  if key == 'r' then
    natural_notes[10][3] = "stoping"
    natural_notes[10][5] = false
  end

  if key == 't' then
    natural_notes[11][3] = "stoping"
    natural_notes[11][5] = false
  end

  if key == 'y' then
    natural_notes[12][3] = "stoping"
    natural_notes[12][5] = false
  end

  if key == 'u' then
    natural_notes[13][3] = "stoping"
    natural_notes[13][5] = false
  end

  if key == 'i' then
    natural_notes[14][3] = "stoping"
    natural_notes[14][5] = false
  end



  --sustenido notes first half

  if key == 's' then
    sustenido_notes[1][3] = "stoping"
    sustenido_notes[1][5] = false
  end
  if key == 'd' then
    sustenido_notes[2][3] = "stoping"
    sustenido_notes[2][5] = false
  end
  if key == 'g' then
    sustenido_notes[4][3] = "stoping"
    sustenido_notes[4][5] = false
  end
  if key == 'h' then
    sustenido_notes[5][3] = "stoping"
    sustenido_notes[5][5] = false
  end
  if key == 'j' then
    sustenido_notes[6][3] = "stoping"
    sustenido_notes[6][5] = false
  end

  --sustenido notes second half

  if key == '3' then
    sustenido_notes[8][3] = "stoping"
    sustenido_notes[8][5] = false
  end
  if key == '4' then
    sustenido_notes[9][3] = "stoping"
    sustenido_notes[9][5] = false
  end
  if key == '6' then
    sustenido_notes[11][3] = "stoping"
    sustenido_notes[11][5] = false
  end
  if key == '7' then
    sustenido_notes[12][3] = "stoping"
    sustenido_notes[12][5] = false
  end
  if key == '8' then
    sustenido_notes[13][3] = "stoping"
    sustenido_notes[13][5] = false
  end

end

function fadeOutNaturalNotes(dt)
  for j = 1, 14 do
    if natural_notes[j][3] == "stoping" then
      if natural_notes[j][4]:getVolume()-(dt/100) > 0.0001 then
        natural_notes[j][4]:setVolume(natural_notes[j][4]:getVolume()/(1/dt))
      else
        natural_notes[j][4]:stop()
        natural_notes[j][3] = false
      end
    end
  end
end

function fadeInNaturalNotes(dt)

  for j = 1, 14 do
    if natural_notes[j][3] == "starting" then
      if natural_notes[j][4]:getVolume() < 0.99 then
        natural_notes[j][4]:setVolume(natural_notes[j][4]:getVolume()*((1/dt)*100))
      else
        natural_notes[j][4]:setVolume(1)
        natural_notes[j][3] = true
      end
    end
  end
end

function fadeOutSustenidoNotes(dt)
  for j = 1, 14 do
    if sustenido_notes[j][3] == "stoping" then
      if sustenido_notes[j][4]:getVolume() > 0.001 then
        sustenido_notes[j][4]:setVolume(sustenido_notes[j][4]:getVolume()/(1/dt))
      else
        sustenido_notes[j][4]:stop()
        sustenido_notes[j][3] = false
      end
    end
  end
end

function fadeInSustenidoNotes(dt)
  for j = 1, 14 do
    if sustenido_notes[j][3] == "starting" then
      if sustenido_notes[j][4]:getVolume()-dt*4 < 0.99 then
        sustenido_notes[j][4]:setVolume(sustenido_notes[j][4]:getVolume()*((1/dt)*100))
      else
        sustenido_notes[j][4]:setVolume(1)
        sustenido_notes[j][3] = true
      end
    end
  end
end

function love.mousepressed(x, y, button, isTouch)

  if (x > buttons.shift_up_button.pos_x and x < (buttons.shift_up_button.pos_x + buttons.shift_up_button.size_x) and (y > buttons.shift_up_button.pos_y and(y < buttons.shift_up_button.pos_y + buttons.shift_up_button.size_y))) then
    keyShiftUp()

  elseif (x > buttons.shift_down_button.pos_x and x < (buttons.shift_down_button.pos_x + buttons.shift_down_button.size_x) and (y > buttons.shift_down_button.pos_y and(y < buttons.shift_down_button.pos_y + buttons.shift_down_button.size_y))) then
    keyShiftDown()
  end
end

function love.mousereleased()
  for i = 1, notes_count do
    natural_notes[i][3] = "stoping"
    natural_notes[i][5] = false

    if ((i ~= 3) and (i ~= 7) and (i ~= 10) and (i ~= 14)) then
      sustenido_notes[i][3] = "stoping"
      sustenido_notes[i][5] = false
    end
  end
end

function mouseDown()
  local natural_key_width = main_canvas.keys_canvas.size_x/notes_count
  local natural_key_height = main_canvas.keys_canvas.size_y

  local sustenido_keys_width = natural_key_width/1.5
  local sustenido_keys_height = natural_key_height/2


  if love.mouse.isDown(1) then
    x, y = love.mouse.getPosition()
    for i = 1, notes_count do

      local natural_key_position_x = main_canvas.keys_canvas.pos_x + (natural_key_width*(i-1))
      local sustenido_key_position_x = main_canvas.keys_canvas.pos_x + (natural_key_width*(i)) - (sustenido_keys_width/2)
      local one_step_behind_sustenido_key_position_x = main_canvas.keys_canvas.pos_x + (natural_key_width*(i-1)) - (sustenido_keys_width/2)

      is_natural = (x > natural_key_position_x and x < (natural_key_position_x + natural_key_width) and (y > main_canvas.keys_canvas.pos_y and(y < main_canvas.keys_canvas.pos_y + natural_key_height)))

      is_sustenido = (x > sustenido_key_position_x and x < (sustenido_key_position_x + sustenido_keys_width) and (y > main_canvas.keys_canvas.pos_y and(y < main_canvas.keys_canvas.pos_y + sustenido_keys_height)))

      is_one_step_behind_sustenido = (x > one_step_behind_sustenido_key_position_x and x < (one_step_behind_sustenido_key_position_x + sustenido_keys_width) and (y > main_canvas.keys_canvas.pos_y and(y < main_canvas.keys_canvas.pos_y + sustenido_keys_height)))

      if is_natural and (not is_sustenido) and (not is_one_step_behind_sustenido)then
        if natural_notes[i][3] ~= 'starting' then
          natural_notes[i][3] = "starting"
          natural_notes[i][4]:play()
          natural_notes[i][5] = true
        end
      elseif natural_notes[i][3] ~= 'starting' then
        natural_notes[i][3] = "stoping"
        natural_notes[i][5] = false

      end

      if (i ~= 3) and (i ~= 7) and (i ~= 10) and (i ~= 14) then
        if is_sustenido then

          if sustenido_notes[i][3] ~= 'starting' then
            sustenido_notes[i][3] = "starting"
            sustenido_notes[i][4]:play()
            sustenido_notes[i][5] = true
          end
        elseif sustenido_notes[i][3] ~= 'starting' then
          sustenido_notes[i][3] = "stoping"
          sustenido_notes[i][5] = false

        end
      end

    end
  end


end