function loadPiano()
  loadCanvas()
  font = love.graphics.newFont("assets/font/8-bit.ttf")
  font:setFilter("nearest", "nearest")
  love.graphics.setFont(font)
end


function loadCanvas()

  --Notice that the canvas works on the background and ITS NOT THE GUI ITSELF
  --This "pseudocanvas" exists cause its not a complicated. Its recomended the love's newCanvas function, even if it costs more proccessment power and memory.
  main_canvas = {}

  main_canvas.left_panel_canvas = {}
  main_canvas.upper_panel_canvas = {}
  main_canvas.keys_canvas = {}

  main_canvas.color = {0,0,0,1}
  main_canvas.pos_x = 0
  main_canvas.pos_y = 0
  main_canvas.size_x = screen_width
  main_canvas.size_y = screen_height

  main_canvas.upper_panel_canvas.color = {0.25,0.25,0.25,1}
  main_canvas.upper_panel_canvas.pos_x = main_canvas.pos_x
  main_canvas.upper_panel_canvas.pos_y = main_canvas.pos_y
  main_canvas.upper_panel_canvas.size_x = screen_width
  main_canvas.upper_panel_canvas.size_y = screen_height*0.4

  main_canvas.keys_canvas.color = {0,0,1,1}
  main_canvas.keys_canvas.pos_x = main_canvas.pos_x
  main_canvas.keys_canvas.pos_y = main_canvas.upper_panel_canvas.pos_y + main_canvas.upper_panel_canvas.size_y
  main_canvas.keys_canvas.size_x = main_canvas.size_x
  main_canvas.keys_canvas.size_y = screen_height*0.6

end