local circleX, circleY

function love.load()
	circleX = love.graphics.getWidth() / 2
	circleY = love.graphics.getHeight() / 2
end

function love.draw()
	love.graphics.circle("fill", circleX, circleY, 50, 32)
end

local joystick = love.joystick.getJoysticks()[1] -- Get the first joystick
function love.update(dt)
	if joystick then
		-- Get the axis values for left and right, up and down movement
		local axisX = joystick:getAxis(1) -- Horizontal axis (left/right)
		local axisY = joystick:getAxis(2) -- Vertical axis (up/down)

		-- Move the circle based on the joystick input
		circleX = circleX + axisX * 150 * dt
		circleY = circleY + axisY * 150 * dt -- Invert Y-axis for typical joystick behavior
	end
	if love.keyboard.isDown("a") then
		circleX = circleX - 100 * dt
	end
	if love.keyboard.isDown("d") then
		circleX = circleX + 100 * dt
	end
	if love.keyboard.isDown("w") then
		circleY = circleY - 100 * dt
	end
	if love.keyboard.isDown("s") then
		circleY = circleY + 100 * dt
	end
end

function love.keypressed(key)
	if key == "left" then
		circleX = circleX - 1
	end
	if key == "right" then
		circleY = circleY + 1
	end
end
