PlayState = Class{__includes = BaseState}

function PlayState:enter(params)
    
    self.sprites = {}
    self.stats = {}
  
    self:generateSprites()

    self.waldo = Sprite({
        x = math.random(WINDOW_WIDTH - TILE_SIZE),
        y = math.random(TILE_SIZE, WINDOW_HEIGHT - TILE_SIZE),
        isWaldo = true,
        spriteFrame = 1,
        texture = 'boba'
    })

    waldoX = self.waldo.x
    waldoY = self.waldo.y
    startTime = love.timer.getTime()
    local font = love.graphics.newFont("font/PressStart2P-Regular.ttf",16)
    love.graphics.setFont(font)

end

function PlayState:generateSprites()
    
    for i = 1, 400 do
        local frame = math.random(50)
        local xvalue = math.random(WINDOW_WIDTH - TILE_SIZE)
        local yvalue = math.random(TILE_SIZE, WINDOW_HEIGHT - TILE_SIZE)

        
        table.insert(self.sprites, Sprite({
          
            x = xvalue,
            y = yvalue, 
            
           isWaldo = false,
           spriteFrame = frame,
           texture = 'donuts'
            
        }))
     
    end
    
end




function PlayState:update(dt)
    currentTime = love.timer.getTime()
    elapsedTime = currentTime - startTime
end



    
-- check if user clicks on Waldo
function love.mousepressed(x, y, button, istouch)
    if button == 1 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      
    
      if(x >= waldoX and x <= waldoX + TILE_SIZE) and (y >= waldoY and y <= waldoY + TILE_SIZE) then
        
        gStateMachine:change('play')
        end
    end   

end






function PlayState:render()
    
    love.graphics.setBackgroundColor( 252/255, 255/255, 178/255 )
    
    for i, sprite in pairs(self.sprites) do 
        sprite:render()      
    end

    self.waldo:render()
    love.graphics.setColor(255/255, 85/255, 187/255, 1)
    
    love.graphics.print("Timer: " .. math.floor(elapsedTime), WINDOW_WIDTH/1.3, 10)
    love.graphics.setColor(1,1,1,1)
end

