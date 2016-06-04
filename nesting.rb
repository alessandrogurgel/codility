# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s)
  chars = {
    '(' => ')',
    '['=> ']',
    '{' => '}'
  }
  stack = []
  s.chars.each do |c|
    if chars.keys.include? c
      stack << c 
    else
      return 0 if stack.empty?
      stack.pop if chars[stack.last] == c
    end
  end
  stack.empty? ? 1: 0
end
