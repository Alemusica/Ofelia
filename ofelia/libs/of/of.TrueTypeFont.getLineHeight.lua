local font = nil

function ofelia.bang()
  if type(font) ~= "userdata" then
    return 0
  end
  return font:getLineHeight()
end

function ofelia.font(p)
  font = p
end