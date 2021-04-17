--Note: this file only deal with the GUI graphics. For gui interaction, go to controls.lua file.

function drawNudeCanvas()

  love.graphics.setColor(0.1,0.1,0.1,1)
  love.graphics.rectangle("line", main_canvas.upper_panel_canvas.pos_x, main_canvas.upper_panel_canvas.pos_y, main_canvas.upper_panel_canvas.size_x, main_canvas.upper_panel_canvas.size_y)

  love.graphics.setColor(main_canvas.upper_panel_canvas.color)
  love.graphics.rectangle("fill", main_canvas.upper_panel_canvas.pos_x, main_canvas.upper_panel_canvas.pos_y, main_canvas.upper_panel_canvas.size_x, main_canvas.upper_panel_canvas.size_y)



  love.graphics.setColor(main_canvas.keys_canvas.color)
  love.graphics.rectangle("fill", main_canvas.keys_canvas.pos_x, main_canvas.keys_canvas.pos_y, main_canvas.keys_canvas.size_x, main_canvas.keys_canvas.size_y)

end

function drawKeys()
  local natural_key_width = main_canvas.keys_canvas.size_x/notes_count
  local natural_key_height = main_canvas.keys_canvas.size_y


  for i = 1, notes_count do
    local key_position_x = main_canvas.keys_canvas.pos_x + (natural_key_width*(i-1))


    if natural_notes[i][5] == false then
      love.graphics.setColor(0.98,0.98,0.98,1)
    else
      love.graphics.setColor(0.2,0.2,0.2,1)
    end


    love.graphics.rectangle("fill", key_position_x, main_canvas.keys_canvas.pos_y, natural_key_width, natural_key_height)love.graphics.setColor(0,0,0,0.3)
    love.graphics.rectangle("line", key_position_x, main_canvas.keys_canvas.pos_y, natural_key_width, natural_key_height)

    love.graphics.setColor(0,0,0,1)
    love.graphics.print(natural_notes[i][1], key_position_x - (font:getWidth(natural_notes[i][1])/2*1.5) + (natural_key_width/2) ,  main_canvas.keys_canvas.pos_y + (natural_key_height*0.7), 0, 1.5)
  end



  sustenido_key_width = natural_key_width/1.5

  for i = 1, notes_count do 

    local key_position_x = main_canvas.keys_canvas.pos_x + (natural_key_width*i) - (sustenido_key_width/2)

    if (i ~= 3) and (i ~= 7) and (i ~= 10) and (i ~= 14) then
      love.graphics.setColor(0.2,0.2,0.2,1)
      love.graphics.rectangle("fill", key_position_x, main_canvas.keys_canvas.pos_y, sustenido_key_width,natural_key_height/2)

      love.graphics.setColor(1,1,1,1)
      love.graphics.print(sustenido_notes[i][1], key_position_x - (font:getWidth(sustenido_notes[i][1])/2*1.2) + (sustenido_key_width/2),  main_canvas.keys_canvas.pos_y + (natural_key_height/2*0.6), 0, 1.2)




      if sustenido_notes[i][5] == true then
        love.graphics.setColor(0,0,0,0.4)
        love.graphics.rectangle("fill", key_position_x, main_canvas.keys_canvas.pos_y, sustenido_key_width,natural_key_height/2)
      end

    end
  end



--love.graphics.print(love.timer.getFPS(), 10,10,0,2)
end


function drawUpperPanelButtons()

  -- shiftUp button
  love.graphics.setColor(buttons.shift_up_button.color[1]*0.8, buttons.shift_up_button.color[2]*0.8, buttons.shift_up_button.color[3]*0.8, buttons.shift_up_button.color[4])
  love.graphics.rectangle("fill", buttons.shift_up_button.pos_x, buttons.shift_up_button.pos_y, buttons.shift_up_button.size_x, buttons.shift_up_button.size_y)

  love.graphics.setColor(buttons.shift_up_button.color)
  love.graphics.rectangle("fill", buttons.shift_up_button.pos_x, buttons.shift_up_button.pos_y, buttons.shift_up_button.size_x-4, buttons.shift_up_button.size_y-4)

--[[      love.graphics.setColor(0,0,0,1)
      love.graphics.line(buttons.shift_up_button.pos_x + (buttons.shift_up_button.size_x/4),  buttons.shift_up_button.pos_y + (buttons.shift_up_button.size_y/4), buttons.shift_up_button.pos_x + (buttons.shift_up_button.size_x/2), buttons.shift_up_button.pos_y + (buttons.shift_up_button.size_y/1.5), buttons.shift_up_button.pos_x + (buttons.shift_up_button.size_x - (buttons.shift_up_button.size_x/4)),  buttons.shift_up_button.pos_y + (buttons.shift_up_button.size_y/4))
      ]]--


  -- shiftDown button
  love.graphics.setColor(buttons.shift_down_button.color[1]*0.8, buttons.shift_down_button.color[2]*0.8, buttons.shift_down_button.color[3]*0.8, buttons.shift_down_button.color[4])
  love.graphics.rectangle("fill", buttons.shift_down_button.pos_x, buttons.shift_down_button.pos_y, buttons.shift_down_button.size_x, buttons.shift_down_button.size_y)

  love.graphics.setColor(buttons.shift_down_button.color)
  love.graphics.rectangle("fill", buttons.shift_down_button.pos_x, buttons.shift_down_button.pos_y, buttons.shift_down_button.size_x-4, buttons.shift_down_button.size_y-4)

end