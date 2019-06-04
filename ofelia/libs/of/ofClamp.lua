local objName = "ofClamp"
local log = pdLog()
local canvas = pdCanvas(this)
local min, max = 0, 0

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 2 then
    min, max = args[1], args[2]
  elseif #args ~= 0 then
    log:error(objName .. " : requires 2 creation arguments")
  end
end

function ofelia.float(f)
  return ofClamp(f, min, max)
end

function ofelia.min(f)
  min = f
end

function ofelia.max(f)
  max = f
end