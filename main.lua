Class = require 'src/class'

require 'src/StateMachine'
require 'src/states/BaseState'
require 'src/states/PlayState'
require 'src/states/StartState'
require 'src/states/GameOverState'
require 'src/Sprite'
require 'src/Util'
require 'src/Dependencies'





-- size of our actual window
WINDOW_WIDTH = 800
WINDOW_HEIGHT = 600

TILE_SIZE = 32


function love.load()
    local music = love.audio.newSource("src/arcade.ogg", "stream")
    music:setLooping(true)
    
    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setTitle('Boba Hunt')
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {resizable=false})
    math.randomseed(os.time())
    local font = love.graphics.newFont("font/PressStart2P-Regular.ttf",20)
    love.graphics.setFont(font)
    small_font = love.graphics.newFont(16)
    music:play()
    
    

    gStateMachine = StateMachine {
        ['start'] = function() return StartState() end,
        ['play'] = function() return PlayState() end,
        ['gameover'] = function() return GameOverState() end,  
    }

    gStateMachine:change('start')
 
  

end



function love.update(dt)
    
    gStateMachine:update(dt)
    
end




function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
  end


function love.draw()
    gStateMachine:render()
    
 

    -- display FPS for debugging
   --displayFPS()

 end


 function displayFPS()
    -- simple FPS display across all states
    
    love.graphics.setColor(0, 1, 0, 1)
    love.graphics.print('FPS: ' .. tostring(love.timer.getFPS()), 10, 40)
end



