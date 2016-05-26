def solution(a)

  presented = {}
  
  a.each do |e|
    presented[e] = 1
  end
  
  min_pos = 1
  
  while true do
    if presented.has_key? min_pos
      min_pos = min_pos + 1
    else
      return min_pos
    end
  end

end
