StartState = Class{__includes = BaseState}

function StartState:update(dt)

end

function love.keypressed(key)
     if (key == 'e') then
        gStateMachine:change('gameover')
    end 

    if (key == 'escape') then
        love.event.quit()
    end 

    if (key == 'enter') then
        gStateMachine:change('play')
    end

    if (key == 'return') then
        gStateMachine:change('play')
    end

   
end


function StartState:render()
    
    love.graphics.setBackgroundColor( 255/255, 211/255, 163/255 )
    love.graphics.setColor(1, 1, 1, 1)
    
    
    
    love.graphics.draw(gTextures['boba'], WINDOW_WIDTH/2 - TILE_SIZE/2, 90,0,2,2)

    love.graphics.setColor(0, 0,0)
    love.graphics.printf('Boba Hunt', 0, 30, WINDOW_WIDTH, 'center')
    love.graphics.printf('There is 1 Boba Tea in each level.', WINDOW_WIDTH/4, WINDOW_HEIGHT / 2 - 80, WINDOW_WIDTH/2, 'center')
    love.graphics.printf('Find it and click on it!', WINDOW_WIDTH/4, WINDOW_HEIGHT / 2 - 30, WINDOW_WIDTH/2, 'center')
   

    --love.graphics.setColor(1, 1, 1, 1)
    
    love.graphics.printf('Press Enter to Start', 0, WINDOW_HEIGHT / 2 + 64, WINDOW_WIDTH, 'center')
    love.graphics.printf('Press Esc to Quit', 0, WINDOW_HEIGHT / 2 + 90, WINDOW_WIDTH, 'center')
    love.graphics.printf('Press e to End the Game', 0, WINDOW_HEIGHT / 2 + 120, WINDOW_WIDTH, 'center')
   
    
    love.graphics.printf('Donut art created by Neuqui', 0, WINDOW_HEIGHT - 64, WINDOW_WIDTH, 'center')
end