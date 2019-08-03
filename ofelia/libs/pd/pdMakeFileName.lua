local log = pdLog("pdMakeFileName")
local canvas = pdCanvas(this)
local canvas2 = pdCanvas(this, 1)

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 1 then
    canvas2 = pdCanvas(this, args[1] + 1)
  elseif #args ~= 0 then
    log:error("requires 1 creation argument")
  end
end

function ofelia.symbol(s)
  return canvas2:makeFileName(s)
end