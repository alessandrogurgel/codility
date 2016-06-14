# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)

  occurrences = {}
  leader = nil
  max_occurrences = 0
  a.each do |e|
    occurrences[e] = occurrences[e] || 0
    occurrences[e] += 1
    if occurrences[e] >= max_occurrences
      max_occurrences = occurrences[e]
      leader = e
    end
  end
  
  return -1 if max_occurrences <= a.length / 2
  
  a.each_with_index do |e, i|
    return i if e == leader
  end

end
