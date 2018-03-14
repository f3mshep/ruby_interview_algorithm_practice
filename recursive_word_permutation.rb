
# Given a word, return all possible permutations of the word
# Use a recursive function. Do not worry about speed.

def insert_char(word, insertion)
  new_words = []
  (word.length + 1).times do |index|
    word_dup = word.dup
    new_words << word_dup.insert(index, insertion)
  end
  new_words
end

def permute(word)
  if word.size <= 1
    return [word]
  else
    removed = word[-1]
    sliced_word = word.slice(0...-1)
    new_words = permute(sliced_word)
    return (new_words.map{|new_word| insert_char(new_word, removed)}).flatten
  end
end

# factorial time ftw... gross.
# hopefully we don't get a stack overflow!

puts permute("cats")