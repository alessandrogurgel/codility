def solution(n)
  # write your code in Ruby 2.2
  value = n
  
  lbg = 0
  bg = 0
  
  found_one = false
  
  while value >= 1 do
    #p "#{value}, resto: #{value % 2}"
    if value % 2 == 0 and found_one
      bg = bg + 1
    elsif value % 2 == 1
      found_one = true
      lbg = [lbg, bg].max
      bg = 0
    end
    value = value /2
  end
  lbg
end
