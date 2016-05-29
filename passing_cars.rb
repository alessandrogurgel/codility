def solution(a)
  
  total_west = a.reduce(:+)
  
  west_count = 0
  pairs = 0
  
  a.each do |e|
    if e == 0
      pairs += total_west - west_count
    else
      west_count += 1
    end
  end
  
  return -1 if pairs > 1000000000
  pairs
  
end
