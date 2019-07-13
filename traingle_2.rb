def solution(a)
  # write your code in Ruby 2.
  sorted = a.sort
  for i in 0..(sorted.length - 3)
    return 1 if sorted[i+2] < sorted[i+1] + sorted[i]
  end
  return 0
end
