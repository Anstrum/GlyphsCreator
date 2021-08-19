io.stdout:setvbuf("no")

Player = require("Player")

function love.load()
	Player.Init()

end

function love.update(dt)
end

function love.draw()
	Player.DrawStats()
end