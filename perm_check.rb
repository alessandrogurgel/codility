def solution(a)
  # write your code in Ruby 2.2

  to_match = {}
  for i in 1..(a.length)
    to_match[i] = 0
  end
  
  a.each do |e|
    return 0 if to_match.has_key? e and to_match[e] == 1
    to_match[e] = 1
  end
  
  to_match.values.all? {|e| e == 1} ? 1: 0 
  
end
