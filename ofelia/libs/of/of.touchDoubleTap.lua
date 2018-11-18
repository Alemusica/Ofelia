local objName = "of.touchDoubleTap"
local log = pd.Log()
local canvas = pd.Canvas(this)
local order = 50

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 1 then
    order = args[1]
  elseif #args ~= 0 then
    log:error(objName .. " : requires 1 creation argument")
  end
  pd.OFWindow.addListener("touchDoubleTap", this, order)
end

function ofelia.order(f)
  order = f
  pd.OFWindow.addListener("touchDoubleTap", this, order)
end

function ofelia.free()
  pd.OFWindow.removeListener("touchDoubleTap", this)
end

function ofelia.touchDoubleTap(e)
  return {e.type, e.x, e.y, e.id, e.time, e.numTouches, e.width, e.height, e.angle, e.minoraxis, e.majoraxis, e.pressure, e.xspeed, e.yspeed, e.xaccel, e.yaccel}
end