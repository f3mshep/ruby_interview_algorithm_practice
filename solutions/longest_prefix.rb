def longest_prefix(word_list)
  longest_prefix = word_list.first || ""
  i = 1
  while i < word_list.length
    word = word_list[i]
    current_prefix = ""
    return "" if word.empty?
    word.each_char.with_index do |char, j|
      if longest_prefix[j] == word[j]
        current_prefix << char
      else
        longest_prefix = current_prefix
        current_prefix = ""
        break
      end
    end
    longest_prefix = current_prefix if !current_prefix.empty?
    i += 1
  end
  longest_prefix
end