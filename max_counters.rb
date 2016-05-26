def solution(n, a)
 
 counters = Array.new(n).map{|e|0}
 limit_value = 0
 max = 0 
 a.each do |e|
  if e == n + 1
    limit_value = max     
  else
    counters[e-1] = [counters[e-1], limit_value].max + 1
    max = [max, counters[e-1]].max
  end
 
 end
 counters.map{|e|[e, limit_value].max}
end
