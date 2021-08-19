io.stdout:setvbuf("no")

Player = require("Player")
Game = require("Game")
require("GeneralVariables")

function love.load()
	Game.Init()
	Player.Init(Game.AskName())
end

function love.update(dt)
	Mouse.Update()
	print("Mouse X = "..Mouse.X, "Mouse Y = "..Mouse.Y)
end

function love.draw()
	Player.DrawStats()
end