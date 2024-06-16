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

point = {
    pos = vector.new(0,0,0),

    new = function(x, y, z)
        local new = setmetatable({}, point)
        new.pos = vector.new(x, y, z)
        
        return new
    end,

    draw = function(self)
        local pointLine = line.new(camera.pos, self.pos)

        -- intersection of a line and a plane https://math.stackexchange.com/questions/100439/determine-where-a-vector-will-intersect-a-plane

        -- get intersection of pointLine and camera.nearPlane
        -- transform the nearPlane to map to the x and y axis
        -- draw the point
    end
}