local objName = "of.mouseScrolled"
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
  pd.OFWindow.addListener("mouseScrolled", this, order)
end

function ofelia.order(f)
  order = f
  pd.OFWindow.addListener("mouseScrolled", this, order)
end

function ofelia.free()
  pd.OFWindow.removeListener("mouseScrolled", this)
end

function ofelia.mouseScrolled(e)
  return {e.type, e.x, e.y, e.button, e.scrollX, e.scrollY, e.modifiers}
end