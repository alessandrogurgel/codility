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

  leader_occurrences = []
  leader_occurence = 0
  a.each_with_index do |e, index|
    leader_occurence += 1 if e == leader
    leader_occurrences.push leader_occurence
  end
  
  equi_leaders = []
  a.each_with_index do |e, index|
     first_half_leader = leader_occurrences[index] > ((index + 1)/2)
      second_half_leader = (leader_occurrences.last - leader_occurrences[index]) > ((a.length - (index + 1))/2)    
     if first_half_leader && second_half_leader
      equi_leaders << index
    end
  end
  equi_leaders.length
end
