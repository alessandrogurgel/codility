def solution(a)
  # write your code in Ruby 2.2
  
  abs_max_profit = 0
  local_max_profit = 0
  
  j = 0
  for i in (1..(a.length-1))
    local_max_profit = a[i] - a[j]
    if local_max_profit < 0
      local_max_profit = 0
      j = i
    end
    abs_max_profit = [abs_max_profit,local_max_profit].max
  end
  abs_max_profit
end
