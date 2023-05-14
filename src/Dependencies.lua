gTextures = {
    ['boba'] = love.graphics.newImage('graphics/boba.png'),
    ['donuts'] = love.graphics.newImage('graphics/donuts.png'),
    

    
}


gFrames = {
    ['boba'] = GenerateQuads(gTextures['boba'], 34, 34),
    ['donuts'] = GenerateQuads(gTextures['donuts'], 34, 34),
    

}