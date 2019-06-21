local log = pdLog("ofSaveFrame")
local canvas = pdCanvas(this)
local bUseViewport = false

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 1 then
    bUseViewport = args[1] ~= 0
  elseif #args ~= 0 then
    log:error("requires 1 creation argument")
  end
end

function ofelia.bang()
  ofSaveFrame(bUseViewport)
  return nil
end

function ofelia.bUseViewport(b)
  bUseViewport = b ~= 0
end