local filter = pdFilter()

function ofelia.perform(s1, s2, s3)
  return filter:highPass(s1, s2, s3)
end