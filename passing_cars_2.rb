def solution(a)
  multi = 0
  sum = 0
  a.each do |e|
    if e == 0
      multi = multi + 1
    else
      sum = sum + multi
    end
  end
  sum > 1000000000 ? -1 : sum
end
