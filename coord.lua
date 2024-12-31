currentX = 0

function love.draw()
	-- love.graphics.print("hello world", 100, 100)
	love.graphics.setColor(255, 0, 0, 255)
	love.graphics.line(0, 0, 400, 400)

	love.graphics.setColor(0, 0, 255, 255)
	love.graphics.line(0, love.graphics.getHeight() / 2, love.graphics.getWidth(), love.graphics.getHeight() / 2)

	love.graphics.setColor(0, 255, 0, 50)
	love.graphics.polygon("fill", { currentX + 0, 100, currentX + 200, 100, currentX + 200, 300, currentX + 0, 300 })
end

function love.update(dt)
	if currentX < love.graphics.getWidth() then
		currentX = currentX + 100 * dt
	else
		currentX = 0
	end
end

function love.load()
	-- print("some message")
	love.graphics.setBackgroundColor(255, 255, 255, 255)
end

function love.quit() end
