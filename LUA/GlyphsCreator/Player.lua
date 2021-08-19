Player = {}

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

	function Player.Init()
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
	end

	function Player.DrawStats()
		love.graphics.setColor(0, 1, 1, 0.6)
		love.graphics.rectangle("fill", 10, 10, 110, 160, 10, 10)
	end

return Player