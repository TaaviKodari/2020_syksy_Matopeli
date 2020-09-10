-- funktiota kutsutaan kerran pelin alussa
function love.load()
	leveys = love.graphics.getWidth()
	korkeus = love.graphics.getHeight()
end

--funktio peliframien piirtämiseen
function love.draw()
	teksti = "Hello world"
	love.graphics.print(teksti, leveys/2, korkeus/2)
end