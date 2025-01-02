local music
local soundEffect

local volume = 0.5

local audioX = 0.5

function love.load()
	love.audio.setVolume(volume)

	music = love.audio.newSource("8-tack.mp3", "stream") -- need a mono audio to position works
	music:play()

	soundEffect = love.audio.newSource("game-start.mp3", "static")
end

function love.keypressed(key)
	if key == "down" then
		if volume >= 0 then
			volume = volume - 0.1
		end
	end

	if key == "up" then
		if volume <= 1 then
			volume = volume + 0.1
		end
	end

	if key == "p" then
		if music:isPlaying() then
			music:pause()
		else
			music:play()
		end
	end

	if key == "space" then
		soundEffect:stop()
		soundEffect:play()
	end

	if key == "left" then
		audioX = audioX + 1
	end
	if key == "right" then
		audioX = audioX - 1
	end

	love.audio.setPosition(audioX, 1, 1)
	love.audio.setVolume(volume)
end
