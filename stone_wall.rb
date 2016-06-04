def solution(h)

  stack = [h.first]
  blocks = 1

  for i in 1..(h.length - 1)
    if h[i] > stack.last
      blocks += 1
      stack.push h[i]
    elsif h[i] < stack.last
      while stack.any? and stack.last > h[i] do
        stack.pop
      end
      next if stack.last == h[i]
      stack << h[i]
      blocks += 1
    end
  end
  blocks
end
