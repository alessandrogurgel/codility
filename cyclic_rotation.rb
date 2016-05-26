def solution(a, k)
  return a if k == 0 || a.empty?
  offset = a.length - (k % a.length)
  return a if offset == 0
  
  a[offset..a.length - 1].concat(a[0..offset-1])
end
