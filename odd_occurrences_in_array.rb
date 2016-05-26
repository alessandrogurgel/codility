def solution(a)
 
 unmatch = {}
 
 a.each do |e|
  if unmatch[e].nil? 
    unmatch[e] = 1
  else
    unmatch.delete e
  end
 end
 unmatch.keys.first
end
