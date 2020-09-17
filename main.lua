-- funktiota kutsutaan kerran pelin alussa
function love.load()
	leveys = 20
	korkeus = 15
	
	reset()
end

function reset()
	
	mato ={
	{x = 3, y = 1},
	{x = 2, y = 1},
	{x = 1, y = 1},
	}
	
	suunta = 'right'
	ajastin = 0
	
end
--funktio peliframien piirtämiseen
function love.draw()
	
	local ruutu = 15
	
	love.graphics.setColor(.28,.28,.28)
	
	love.graphics.rectangle('fill',0, 0, leveys*ruutu,korkeus * ruutu)
	
	local function piirraRuutu(x,y)
		love.graphics.rectangle('fill', (x-1) * ruutu, (y-1) * ruutu, ruutu-1 ,ruutu-1)
	end
	
end