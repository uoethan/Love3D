-- Objects and functions used for 3D

vector = {
    x = 0,
    y = 0,
    z = 0,

    dotProduct = function(self, other)
        return self.x*other.x + self.y*other.y + self.z*other.z
    end,

    angleBetween = function(self, other)
        dotProduct = self:dotProduct(other)

        return math.acos(dotProduct/(self.length()*other.length()))
    end,

    crossProduct = function(self, other)
        -- to be implemented
    end,

    ------ OVERRIDES ------
    __add = function(self, other) -- only implemented for vector + vector
        return vector.new(self.x+other.x, self.y+other.y, self.z+other.z)
    end,

    __sub = function(self, other) -- only implemented for vector - vector
        return vector.new(self.x-other.x, self.y-other.y, self.z-other.z)
    end,

    __mul = function(self, other) -- only implemented for vector * scalar
        return vector.new(self.x*other, self.y*other, self.z*other)
    end,

    __div = function(self, other) -- only implemented for vector / scalar
        return vector.new(self.x/other, self.y/other, self.z/other)
    end,

    __unm = function(self)
        return vector.new(-self.x, -self.y, -self.z)
    end,

    __len = function(self)
        return (self.x*self.x + self.y*self.y + self.z*self.z) ^ 0.5
    end,

    __eq = function(self, other)
        return self.x == other.x and self.y == other.y and self.z == other.z
    end,

    __lt = function(self, other)
        return #self < #other
    end,

    __le = function(self, other)
        return #self <= #other
    end,

    __gt = function(self, other)
        return #self > #other
    end,

    __ge = function(self, other)
        return #self >= #other
    end,

    __tostring = function(self)
        return "("..self.x..", "..self.y..", "..self.z..")"
    end,

    __concat = function(self, other)
        return tostring(self)..tostring(other)
    end,

    new = function(x, y, z)
        local new = setmetatable({}, vector)

        new.x = x
        new.y = y
        new.z = z

        return new
    end,
}

line = {
    -- vector equation of a line = r + r0 + tv
    -- r is a vector, r0 is the origin point (like the y intercept) and t is a scalar factor

    r = vector.new(0, 0, 0), -- point on line
    v = vector.new(0, 0, 0), -- direction vector

    new = function(point1, point2)
        local new = setmetatable({}, line)

        new.r = point1
        new.v = point2 - point1

        return new
    end,

    ------ OVERRIDES ------
    __tostring = function(self)
        return "r = "..self.r.." + t"..self.v
    end,
}

plane = {
    -- the origin is the center point of the plane
    -- the vector facing outward from the plane
    -- the normal dotted with any point on the plane is 0

    origin = vector.new(0,0,0),
    normal = vector.new(0,0,0)
}