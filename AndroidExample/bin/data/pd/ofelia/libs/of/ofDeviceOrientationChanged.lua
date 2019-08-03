local log = pdLog("ofDeviceOrientationChanged")
local canvas = pdCanvas(this)
local order, enabled = 50, true

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 1 then
    order = args[1]
  elseif #args == 2 then
    order, enabled = args[1], args[2] ~= 0
  elseif #args ~= 0 then
    log:error("requires 1 or 2 creation argument")
  end
  ofWindow.addListener("deviceOrientationChanged", this, order)
end

function ofelia.float(b)
  enabled = b ~= 0
end

function ofelia.order(f)
  order = f
  ofWindow.addListener("deviceOrientationChanged", this, order)
end

function ofelia.free()
  ofWindow.removeListener("deviceOrientationChanged", this)
end

function ofelia.deviceOrientationChanged(e)
  if not enabled then
    return
  end
  return e
end