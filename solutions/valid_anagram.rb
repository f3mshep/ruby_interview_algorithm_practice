def valid_anagram(str_input)
  differences = 0
  return -1 if str_input.length.odd?
  mid = str_input.length / 2
  left = str_input[0...mid]
  right = str_input[mid..-1]
  left_histo = Hash.new(0)
  right_histo = Hash.new(0)
  left.each_char {|char| left_histo[char] += 1}
  right.each_char {|char| right_histo[char] += 1}
  right_histo.each do |char, amount|
    differences += (right_histo[char] - left_histo[char]).abs
  end
  differences
end