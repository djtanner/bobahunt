Sprite = Class{}


function Sprite:init(def)
    self.x = def.x
    self.y = def.y
    self.isWaldo = false
    self.spriteFrame = def.spriteFrame
    self.texture = def.texture
    
   

end


function Sprite:update(dt)

end


function Sprite:render()




love.graphics.draw(gTextures[self.texture],gFrames[self.texture][self.spriteFrame], math.floor(self.x),math.floor(self.y)) 
end