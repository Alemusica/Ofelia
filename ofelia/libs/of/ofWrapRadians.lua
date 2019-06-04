local objName = "ofWrapRadians"
local log = pdLog()
local canvas = pdCanvas(this)
local from, to = 0, 0

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 2 then
    from, to = args[1], args[2]
  elseif #args ~= 0 then
    log:error(objName .. " : requires 2 creation arguments")
  end
end

function ofelia.float(f)
  return ofWrapRadians(f, from, to)
end

function ofelia.from(f)
  from = f
end

function ofelia.to(f)
  to = f
end