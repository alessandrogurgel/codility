# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s, p, q)
  # write your code in Ruby 2.2
  
  mapping = {
    'A' => 1, 
    'C' => 2,
    'G' => 3,
    'T' => 4
  }
  n = s.size
  dna = s.split('').map {|e| mapping[e]}
  occurrences = Hash.new {|h,k| h[k] = Array.new(n+1, 0)}
  
  mapping.values.each do |value|
    for i in 1..n
      occurrences[value][i] = occurrences[value][i - 1]
      occurrences[value][i] += 1 if dna[i-1] == value
    end
  end
  
  result = []
  p.zip(q).each do |from, to|
    mapping.values.each do |value|
      if occurrences[value][from] != occurrences[value][to + 1]
        result << value
        break
      end
    end
  end
  result
end
