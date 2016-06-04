# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)

  changes = Hash.new { |h, k| h[k] = { start: 0, end: 0 } }

  # saving the points where come disk starts or ends
  a.each_with_index do |radius, position|
    changes[position - radius][:start] += 1
    changes[position + radius][:end] += 1
  end
  
  sorted_changes = Hash[changes.sort]
  intersections = 0
  # we are going to percolate the changing points. this stores the disks there are opened
  active = 0

  sorted_changes.each do |_, change|
    started = change[:start]
    ended = change[:end]
    # the sum of of interceptions of disk that are opening on the position and those are already opened
    intersections += started * active + (started * (started - 1)) / 2  
    
    # number of opened disks
    active += started - ended
    return -1 if intersections > 10_000_000
  end
  
  intersections
end
