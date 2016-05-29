def solution(s, p, q)
 letters = {'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4}
 n = s.size
 
 letter_occurrences = Hash.new {|h,k| h[k] = Array.new(n+1, 0)}
 
 # it holds the letter occurrences in each index of the text input 
 letters.keys.each do |letter|
  for i in 1..n
    letter_occurrences[letter][i] = letter_occurrences[letter][i - 1]
    letter_occurrences[letter][i] += 1 if s[i-1] == letter
  end
 end
 
 output = []
 p.zip(q).each do |from, to|
  letters.keys.each do |letter|
    if letter_occurrences[letter][from] != letter_occurrences[letter][to + 1] 
      # the letter occurs on the interval sequence s[from..to]
      output << letters[letter]
      break
    end
  end
 end
 
 output
 
end
