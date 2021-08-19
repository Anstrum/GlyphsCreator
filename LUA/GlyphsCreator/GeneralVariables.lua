Screen = {}
	Screen.Width = 800
	Screen.Height = 600

Mouse = {}
	Mouse.X = 0
	Mouse.Y = 0
	function Mouse.Update()
		Mouse.X = love.mouse.getX()
		Mouse.Y = love.mouse.getY()
	end

Fonts = {}
	Fonts.List = {}
	function Fonts.AddFont(FontName, FontFile, Size)
		local MyFont = {}
		MyFont.Name = FontName
		MyFont.Font = love.graphics.newFont(FontFile, Size)
		Fonts.List[#Fonts.List + 1] = MyFont
		print("Done!")
	end
	function Fonts.GetFont(FontName)
		for I = 1, #Fonts.List do
			if Fonts.List[I].Name == FontName then
				return Fonts.List[I].Font
			end
		end
	end