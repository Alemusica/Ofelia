local objName = "ofDrawEllipse"
local log = pdLog()
local canvas = pdCanvas(this)
local pos, width, height = ofVec3f(), 0, 0

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 4 then
    pos:set(args[1], args[2])
    width, height = args[3], args[4]
  elseif #args == 5 then
    pos:set(args[1], args[2], args[3])
    width, height = args[4], args[5]
  elseif #args ~= 0 then
    log:error(objName .. " : requires 4 or 5 creation arguments")
  end
end

function ofelia.bang()
  ofDrawEllipse(pos:vec3(), width, height)
  return nil
end

function ofelia.x(f)
  pos.x = f
end

function ofelia.y(f)
  pos.y = f
end

function ofelia.z(f)
  pos.z = f
end

function ofelia.width(f)
  width = f
end

function ofelia.height(f)
  height = f
end

function ofelia.pos(fv)
  if #fv == 2 then
    pos:set(fv[1], fv[2], 0)
  elseif #fv == 3 then
    pos:set(fv[1], fv[2], fv[3])
  else
    log:error(objName .. " : 'pos' requires 2 or 3 arguments")
  end
end