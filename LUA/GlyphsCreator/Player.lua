local Player = {}

	Player.Name = ""
	Player.Level = 0
	Player.Experience = 0
	Player.MaxExperience = 0
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

	Player.MaxHp = 0
	Player.MaxMana = 0
	Player.MaxStamina = 0

	Player.StatEffect = {}
		Player.StatEffect.List = {}
		function Player.StatEffect.AddStatEffect(Stat, Effect, Duration)
			local MyReducer = {}
			MyEffect.Stat = Stat
			MyEffect.Effect = Effect
			MyEffect.Duration = Duration

			table.insert(Player.Effect.List, MyEffect)
		end

	Player.Spells = {}
	function Player.Spells.NewSpell(SpellName, Target, Effect)
		local MySpell = {}
		MySpell.Name = SpellName
		MySpell.NameFrame = love.graphics.newText(Fonts.GetFont("PlayerName"))
		MySpell.Target = Target
		MySpell.Effect = Effect
	end
	Player.CurrentSpells = {}



	Player.StatFrame = {}
		Player.StatFrame.Show = false
		Player.StatFrame.X = 0
		Player.StatFrame.Y = 0
		Player.StatFrame.Width = 0
		Player.StatFrame.Height = 0
		Player.StatFrame.Color = {1, 1, 1, 0.6}

		Player.StatFrame.Bars = {}
		Player.StatFrame.Bars.List = {}
			function Player.StatFrame.Bars.Init()
				local MyBar = {}
				MyBar.X = 15
				MyBar.Y = 20 + ((Player.NameFrame:getWidth() * 1.2) - (PlayerFrame:getWidth() * 1.1)) / 2
				MyBar.MaxWidth = Player.NameFrame:getWidth() * 1.1
				Player.ActualWidth = Player.NameFrame:getWidth() * 1.1
				MyBar.Height = 15
				MyBar.Color = {1, 0, 0, 1}
				table.insert(Player.StatFrame.Bars.List, MyBar)
			end
			function Player.StatFrame.Bars.Update()
				
			end
			function Player.StatFrame.Bars.Draw()
				for I = 1, #Player.StatFrame.Bars.List do
					love.graphics.setColor()
					love.graphics.rectangle()
				end
			end

	Player.SpellsFrame = {}

	function Player.Init(Name)
		--Player Init
		Player.Name = Name
		Player.NameFrame = love.graphics.newText(Fonts.GetFont("PlayerName"), Player.Name)
		Player.HealthPoint = 10
		Player.MaxHp = 10
		Player.ManaPoint = 8
		Player.MaxMana = 8
		Player.Stamina = 8
		Player.MaxStamina = 8
		Player.Attack = 5
		Player.Intellect = 5
		Player.Armor = 5
		Player.MagicResistance = 5
		Player.Speed = 10
		Player.Accuracy = 10
		Player.Evasion = 10
		Player.Luck = 1
		Player.XpBoost = 1

		--Stat Frame Init

	end

	function Player.DrawStats()

		
		--Stat Frame Draw
		love.graphics.setColor(Player.StatFrame.Color)
		love.graphics.rectangle("fill", 10, 10, 10 + Player.NameFrame:getWidth() * 1.2, 250, 10, 10)
		
		--Name Draw
		love.graphics.setColor(0.6, 0.2, 0.7, 1)
		love.graphics.draw(Player.NameFrame, 10 + ((Player.NameFrame:getWidth() * 1.2) - Player.NameFrame:getWidth()) / 2, 30, 0)
		
		--Stats Draw
		love.graphics.setColor(0, 0, 0, 1)
		love.graphics.print("Health: "..Player.HealthPoint, 15, 20 + Player.NameFrame:getHeight())
		love.graphics.print("Mana: "..Player.ManaPoint, 15, 35 + Player.NameFrame:getHeight())
		love.graphics.print("Stamina: "..Player.Stamina, 15, 50 + Player.NameFrame:getHeight())
		love.graphics.print("Attack: "..Player.Attack, 15, 65 + Player.NameFrame:getHeight())
		love.graphics.print("Intellect: "..Player.Intellect, 15, 80 + Player.NameFrame:getHeight())
		love.graphics.print("Armor: "..Player.Armor, 15, 95 + Player.NameFrame:getHeight())
		love.graphics.print("MagicResistance: "..Player.MagicResistance, 15, 110 + Player.NameFrame:getHeight())
		love.graphics.print("Speed: "..Player.Speed, 15, 125 + Player.NameFrame:getHeight())
		love.graphics.print("Accuracy: "..Player.Accuracy, 15, 140 + Player.NameFrame:getHeight())
		love.graphics.print("Evasion: "..Player.Evasion, 15, 155 + Player.NameFrame:getHeight())
		love.graphics.print("Luck: "..Player.Luck, 15, 170 + Player.NameFrame:getHeight())
		love.graphics.print("XpBoost: "..Player.XpBoost, 15, 185 + Player.NameFrame:getHeight())

	end

return Player