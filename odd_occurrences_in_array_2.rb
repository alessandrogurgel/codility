def solution(a)
  elements = {}
  a.each do |n|
    elements[n] = (elements[n] || 0) + 1  
  end
  
  elements.keys.each do |k|
    if elements[k] % 2 == 1
      return k
    end
  end
end
