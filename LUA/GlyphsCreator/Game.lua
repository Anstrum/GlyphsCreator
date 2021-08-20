local Game = {}

	function Game.Init()
		Fonts.AddFont("PlayerName", "Fonts/SweetFont.ttf", 45)
		Fonts.AddFont("SpellName", "Fonts/SweetFont.ttf", 40)
	end

	function Game.AskName()
		return "Nanaka"
	end

return Game