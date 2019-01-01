-- wird immer aufgerufen, wenn das Bild neu aufgebaut werden muss (sobald sich etwas bewegt circa 60 mal pro Sekunde)
function love.draw()
  love.graphics.print("Hello World!", 10, 10)
  love.graphics.draw(player.image, player.x, player.y)
end

-- wird beim Programmstart aufgerufen
function love.load()
  player = {
    x = 0,
    y = 0,
    image = love.graphics.newImage("images/scratchcat72.png")
  }
  osterhase = love.audio.newSource("audio/test123.mp3", "stream")
end

-- wird für jeden Tastendruck aufgerufen
function love.keypressed(key)
  if key == "p" then
    love.audio.play(osterhase)
  end

  if key == "right" then
    player.x = player.x + 10
  end

  if key == "left" then
    player.x = player.x - 10
  end

  if key == "up" then
    player.y = player.y - 10
  end

  if key == "down" then
    player.y = player.y + 10
  end

  if key == "escape" then
    love.event.quit()
  end
end
