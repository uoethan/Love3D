camera = {
    pos = vector:new(0, 0, 0),
    rot = vector:new(0, 0, 0),

    nearPlane = {
        width = 10,
        height = 10,

        distance = 1
    },

    farPlane = {
        width = 100,
        height = 100,
        distance = 100
    },

    drawOrder = function(self)
        -- Returns a drawOrder table. This contains all visible triangles from furthest to closest to be drawn by the shader.
    end
}