def solution(a)
  return 1 if a.empty?
  # write your code in Ruby 2.2
  sum = Array(1..(a.length + 1)).reduce(:+)
  sum - a.reduce(:+)
end
