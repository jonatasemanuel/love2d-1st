local outString = "Do something with the mouse begin"
local wheel = ""
local mouseMove = ""

function love.load()
	love.graphics.setFont(love.graphics.newFont(32))
	-- love.mouse.setRelativeMode(true)
	love.mouse.setCursor(love.mouse.getSystemCursor("ibeam"))
end

function love.update(dt)
	local x, y = love.mouse.getPosition()

	outString = "mouse position " .. x .. "," .. y

	if love.mouse.isDown(1) then
		outString = outString .. "\nLeft button pressed"
	end
	if love.mouse.isDown(2) then
		outString = outString .. "\nRight button pressed"
	end
	if love.mouse.isDown(3) then
		outString = outString .. "\nMiddle button pressed"
	end
end

function love.wheelmoved(x, y)
	if y > 0 then
		wheel = "moved wheel up"
	elseif y < 0 then
		wheel = "moved wheel down"
	end
end

function love.mousemoved(x, y, dx, dy)
	mouseMove = "moved to " .. ", " .. y .. " a change of " .. dx .. ", " .. dy .. "\n"
end

function love.mousepressed(x, y, button, isTouch) end

function love.draw()
	outString = outString .. "\n" .. wheel
	outString = outString .. "\n" .. mouseMove
	love.graphics.print(outString)
end
