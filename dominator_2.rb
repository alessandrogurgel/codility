def solution(a)
  # write your code in Ruby 2.2
  last_occurrences = {}
  counting = {}
  a.each_with_index do |e, index|
    counting[e] = counting[e] || 0
    counting[e] += 1
    last_occurrences[e] = index
  end
  counting.keys.each do |k|
    if counting[k] > (a.length/2)
      return last_occurrences[k]
    end
  end
  return -1
end
