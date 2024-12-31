function love.conf(t)
	t.window.title = "This is the name of our app"
	t.window.width = 640
	t.window.height = 480

	t.console = true
	t.modules.touch = false
	t.window.icon = "cat-icon.png" -- we can set in love.load func too
end
