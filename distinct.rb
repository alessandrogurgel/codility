def solution(a)
  
  previous = Float::INFINITY
  distinct = 0
  a.sort.each do |e|
    if e != previous
      distinct += 1  
    end
    previous = e
  end
  distinct
end
