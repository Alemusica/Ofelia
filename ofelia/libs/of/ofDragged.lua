local objName = "ofDragged"
local log = pdLog()
local canvas = pdCanvas(this)
local outlet = pdOutlet(this)
local order, rendering = 50, true

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 1 then
    order = args[1]
  elseif #args == 2 then
    order, rendering = args[1], args[2] ~= 0
  elseif #args ~= 0 then
    log:error(objName .. " : requires 1 or 2 creation arguments")
  end
  ofWindow.addListener("dragged", this, order)
end

function ofelia.float(b)
  rendering = b ~= 0
end

function ofelia.order(f)
  order = f
  ofWindow.addListener("dragged", this, order)
end

function ofelia.free()
  ofWindow.removeListener("dragged", this)
end

function ofelia.dragged(e)
  if not rendering then
    return
  end
  outlet:outletList(1, {e.position.x, e.position.y})
  outlet:outletList(0, e.files)
end