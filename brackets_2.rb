def solution(s)
  # write your code in Ruby 2.2
  unclosed_elements = []
  matching = {
    ')' => '(',
    ']' => '[',
    '}' => '{'
  }
  
  s.split('').each do |e|
    if matching.values.include? e
      unclosed_elements << e
    else
      last_unclosed = unclosed_elements.last
      if last_unclosed == matching[e]
        unclosed_elements.pop
      else
        return 0
      end
    end
  end
  return unclosed_elements.empty? ? 1: 0
end
