-- Contains high level objects and functions to support OO

function table.copy(maintable)
    local tablecopy = setmetatable({}, maintable)
    for k, v in pairs(maintable) do
      tablecopy[k] = v
    end
    return tablecopy
  end
  