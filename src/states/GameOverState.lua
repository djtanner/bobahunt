GameOverState = Class{__includes = BaseState}



function GameOverState:update(dt)

end


function GameOverState:render()


    
    love.graphics.setBackgroundColor( 255/255, 211/255, 163/255 )
    love.graphics.setColor(1, 1, 1, 1)
    
    
    
    love.graphics.draw(gTextures['boba'], WINDOW_WIDTH/2 - TILE_SIZE/2, 90,0,2,2)

    love.graphics.setColor(0, 0,0)
    love.graphics.printf('Game Over', 0, 30, WINDOW_WIDTH, 'center')
    
   

    --love.graphics.setColor(1, 1, 1, 1)
    
    love.graphics.printf('Press Enter to Go Back to Start', 0, WINDOW_HEIGHT / 2 + 64, WINDOW_WIDTH, 'center')
    love.graphics.printf('Press Esc to Quit', 0, WINDOW_HEIGHT / 2 + 90, WINDOW_WIDTH, 'center')
   
    
    
end