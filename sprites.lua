local imageFile
local frames = {}
local activeFrame
local currentFrame = 1

function love.load()
	-- imageFile = love.graphics.newImage("fly.png")
	imageFile = love.graphics.newImage("choppers.png")
	frames[1] = love.graphics.newQuad(0, 0, 128, 64, imageFile:getDimensions())
	frames[2] = love.graphics.newQuad(128, 0, 128, 64, imageFile:getDimensions())
	frames[3] = love.graphics.newQuad(0, 64, 128, 64, imageFile:getDimensions())
	frames[4] = love.graphics.newQuad(128, 64, 128, 64, imageFile:getDimensions())

	activeFrame = frames[currentFrame]
end

function love.draw()
	-- regular img: love.graphics.draw(imageFile, activeFrame)
	-- love.graphics.draw(imageFile, activeFrame, love.graphics.getWidth() / 2 - 64, love.graphics.getHeight() / 2 - 32)

	--[[ love.graphics.draw(
		imageFile,
		activeFrame,
		-- selec() -> x, y, w or h
		love.graphics.getWidth() / 2 - select(3, activeFrame:getViewport()) / 2,
		love.graphics.getHeight() / 2 - select(4, activeFrame:getViewport()) / 2
		-- love.graphics.getHeight() / 2 - ({activeFrame:getViewport()})[4] / 2
	) ]]

	love.graphics.draw(imageFile, activeFrame, 200, 200, math.rad(90), 1, 1, 64, 32)
end

local elapsedTime = 0
function love.update(dt)
	elapsedTime = elapsedTime + dt

	if elapsedTime > 1 then
		if currentFrame < 4 then
			currentFrame = currentFrame + 1
		else
			currentFrame = 1
		end
		activeFrame = frames[currentFrame]
		elapsedTime = 0
	end
end
