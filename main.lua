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
	-- kommentointi
	for indeksi , matopala in ipairs(mato) do
		love.graphics.setColor(0.6, 0.9, 0.32)
		piirraRuutu(matopala.x, matopala.y)
	end
	
end

function love.update(dt)

	local seuraavaX = mato[1].x
	local seuraavaY = mato[1].y
	
	if suunta == 'right' then
		seuraavaX = seuraavaX + 1
		
		if  seuraavaX  > leveys then
			suunta = 'left'
		end
		
	elseif suunta == 'left' then
		seuraavaX = seuraavaX - 1
		
		if seuraavaX  < 1 then
			suunta = 'right'
		end
	end
	
	table.insert(mato,1,{x = seuraavaX, y = seuraavaY})
	table.remove(mato)
	
end





