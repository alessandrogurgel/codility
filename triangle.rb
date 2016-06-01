def solution(a)
  sorted = a.sort
  
  index = 0
  for i in 0..(sorted.length - 3)
  
  if sorted[i] + sorted[i+1] > sorted[i+2]
    return 1
  end
  
  end
  return 0
  
end
