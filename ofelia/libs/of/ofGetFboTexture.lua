local objName = "ofGetFboTexture"
local log = pdLog()
local canvas = pdCanvas(this)
local name = ""

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 1 then
    name = args[1]
  elseif #args ~= 0 then
    log:error(objName .. " : requires 1 creation argument")
  end
end

function ofelia.bang()
  local m = require(name)
  return m.fbo:getTexture()
end

function ofelia.float(i)
  local m = require(name)
  return m.fbo:getTexture(i)
end

function ofelia.name(s)
  name = s
end