# to walk through using a naive solution:

# loop through each letter in the string.
# in a nested loop, go through each letter
# after other letter. Inclusively check between other letter
# and current letter if there is palindrome
# keep track of longest one
# return longest

def longest_palindrome(s)
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

def is_palindrome?(letters)
  letters == letters.reverse
end

# speed O(n**3)

#come back to this one. It is a toughie.
