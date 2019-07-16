def solution(a)
  # write your code in Ruby 2.2
  
  local_max_profit = 0
  max_profit = 0
  
  j = 0
  for i in (1..(a.length - 1))
    local_max_profit = a[i] - a[j]
    if local_max_profit > max_profit
      max_profit = local_max_profit
    elsif local_max_profit < 0
      j = i
    end
  end
  max_profit

end
