def solution(x, a)
  seen = {}
  
  a.each_with_index do |position, index|
    seen[position] = true if position <= x
    return index if seen.size == x
  end
  
  -1
end
