local log = pdLog("ofGetFontSpaceSize")
local canvas = pdCanvas(this)
local name = ""

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 1 then
    name = args[1]
  elseif #args ~= 0 then
    log:error("requires 1 creation argument")
  end
end

function ofelia.bang()
  local m = require(name)
  return m.font:getSpaceSize()
end

function ofelia.name(s)
  name = s
end