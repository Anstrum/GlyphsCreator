local Player = {}

	Player.Name = ""
	Player.HealthPoint = 0
	Player.ManaPoint = 0
	Player.Stamina = 0
	Player.Attack = 0
	Player.Intellect = 0
	Player.Armor = 0
	Player.MagicResistance = 0
	Player.Speed = 0
	Player.Accuracy = 0
	Player.Evasion = 0
	Player.Luck = 0
	Player.XpBoost = 0

	Player.StatFrame = {}
		Player.StatFrame.Show = false
		Player.StatFrame.X = 0
		Player.StatFrame.Y = 0
		Player.StatFrame.Width = 0
		Player.StatFrame.Height = 0
		Player.StatFrame.Color = {1, 1, 1, 0.6}

	function Player.Init(Name)
		--Player Init
		Player.Name = Name
		Player.HealthPoint = 10
		Player.ManaPoint = 8
		Player.Stamina = 8
		Player.Attack = 5
		Player.Intellect = 5
		Player.Armor = 5
		Player.MagicResistance = 5
		Player.Speed = 10
		Player.Accuracy = 10
		Player.Evasion = 10
		Player.Luck = 0
		Player.XpBoost = 0

		--Stat Frame Init

	end

	function Player.DrawStats()
		local PlayerName = love.graphics.newText(Fonts.GetFont("PlayerName"), Player.Name)
		love.graphics.setColor(Player.StatFrame.Color)
		love.graphics.rectangle("fill", 10, 10, 10 + PlayerName:getWidth() * 1.2, 200, 10, 10)
		love.graphics.setColor(0.6, 0.2, 0.7, 1)
		love.graphics.draw(PlayerName, 10 + ((PlayerName:getWidth() * 1.2) - PlayerName:getWidth()) / 2, 20, 0)
		love.graphics.print("")
	end

return Player