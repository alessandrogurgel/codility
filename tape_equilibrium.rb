def solution(a)
  # write your code in Ruby 2.2
  
  sums = []
  
  a.each_with_index do |e, i|
    sum = i == 0 ? e : e + sums[i-1]
    sums << sum
  end
    
  min_difference = 2001

  for i in 0..a.length-2
    min_difference = [min_difference, (2*sums[i] - sums.last).abs ].min
  end
  
  min_difference
  
end
