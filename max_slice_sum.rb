def solution(a)
  g_sum = a[0]
  sum = a[0]
  for i in (1..(a.length-1))
    e = a[i]
    sum = [sum + e, e].max
    g_sum = [g_sum, sum].max
  end
  g_sum
end
