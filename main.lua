require("dependencies")

function love.load()
    love.window.setMode(1000,1000)
    love.window.setTitle("Hello")
end

function love.draw()
    vector1 = vector.new(1,1,1)
    vector2 = vector.new(1,2,3)

    vectorLine = line.new(vector1, vector2)

    love.graphics.print(tostring(#vector2))
end

function love.update()

end