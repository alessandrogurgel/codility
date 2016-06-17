# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # first and last positions are excluded for the double slice
  a[0] = 0
  a[-1] = 0

  #get the sum of maximum subarray, from the left to the right direction
  max_from_left = []
  max_ending = 0
  a.each do |v|
    max_ending = [0, max_ending + v].max
    max_from_left << max_ending
  end
  
  #get the sum of maximum subarray, from the right to the left direction
  max_from_right = []
  max_ending = 0
  a.reverse.each do |v|
    max_ending = [0, max_ending + v].max
    max_from_right << max_ending
  end
  max_from_right.reverse!

  # when comparing both directions excludes the i index and take the maximum double slice value.
  n = a.size
  max_double_slice = 0
  for i in 1..n-2
    max_double_slice = [max_double_slice, max_from_left[i - 1] + max_from_right[i + 1]].max
  end

  max_double_slice

end
