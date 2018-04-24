# to walk through using a naive solution:

# loop through each letter in the string.
# in a nested loop, go through each letter
# after other letter. Inclusively check between other letter
# and current letter if there is palindrome
# keep track of longest one
# return longest

def naive_longest_palindrome(s)
  longest = s[0]
  s.each_char.with_index do |ch_i, i|
    s.each_char.with_index do |ch_j, j|
      next if j < i
      possible_pal = s[i..j]
      if is_palindrome?(possible_pal)
        longest = possible_pal.length > longest.length ? possible_pal : longest
      end
    end
  end
  longest
end



# speed O(n**3)

# come back to this one. It is a toughie.
# speed O(n**2)
DELIMITER = "#"
def better_longest_palindrome(s)
  longest_pal = s[0]
  index = 0
  while index < s.length
    char = delimit_string[index]
    if delimit_string[index + 1] == delimit_string[index - 1]
      curr_pal = char == DELIMITER ? "" : char
      growth = 1
      while delimit_string[index + growth] == delimit_string[index - growth]
        curr_char = delimit_string[index + growth]
        curr_pal.insert(0,curr_char) unless curr_char == DELIMITER
        curr_pal.insert(-1,curr_char) unless curr_char == DELIMITER
        growth += 1
      end
      longest_pal = curr_pal.length > longest_pal.length ? curr_pal : longest_pal
    end
    index += 1
  end
  longest_pal
end

def longest_palindrome(s)
  longest_index = 0
  max_length = 0
  s.length.times do |index|
    if is_palindrome?(s, index - max_length, index)
      longest_index = index - max_length
      max_length = max_length + 1
    elsif index - max_length - 1 >= 0 && is_palindrome?(s, index - max_length - 1, index)
      longest_index = index - max_length - 1
      max_length = max_length + 2
    end
  end
  s[longest_index...longest_index + max_length]
end

def is_palindrome?(letters, start, ending)
  ((ending - start + 1)/2).times do |index|
    return false if (letters[start + index] != letters[ending - index])
  end
  true
end
