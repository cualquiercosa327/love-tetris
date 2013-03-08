--[[	Author:	Milkmanjack
		Date:	3/5/13
		Startup point for game.
]]

local Game			= require("obj.Game")
local GameState		= require("obj.GameState")
local currentGame	= Game:new()

--[[
	Dash Pixel 7 font by Style7 (http://www.styleseven.com/)
	This font is freeware! I think that means I can use it!
]]
font				= love.graphics.newFont("resources/dash_pixel-7.ttf", 20)

love.graphics.setFont(font)
love.graphics.setBackgroundColor(80,0,0,255)
love.graphics.setCaption("LOVE Tetris")
love.graphics.setIcon(love.graphics.newImage("resources/piece.png"))

--[[
	This drum loop, titled "Marching Mice," is a little diddle
	by a cool cat going by the name kantough (http://freesound.org/people/kantouth/)
	on freesound.org. This song and its license terms can be found here:
	http://freesound.org/people/kantouth/sounds/104984/
]]
drumLoop = love.audio.newSource("resources/drum_loop.ogg", "stream")
drumLoop:setLooping(true)
drumLoop:play()

function love.draw()
	currentGame:draw()
end

function love.update(t)
	currentGame:update(t)
end

function love.keypressed(key)
	currentGame:keypressed(key)
end
