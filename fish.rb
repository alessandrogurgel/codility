def solution(a, b)
   # write your code in Ruby 2.2
  alives = b.length
  stack = []  
  b.each_with_index do |e, i|
    if e == 1
      stack << a[i]
      next
    else
      while stack.any? and a[i] > stack.last
        stack.pop
        alives -= 1
      end   
      if stack.any? and a[i] < stack.last
        alives -= 1
      end
    end
  end  
  alives
end
