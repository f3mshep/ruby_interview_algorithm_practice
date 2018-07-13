# Given a string s and a non-empty string p, find all the start indices of p's anagrams in s.

# Strings consists of lowercase English letters only and the length of both strings s and p will not be larger than 20,100.

# The order of output does not matter.

# Example 1:

# Input:
# s: "cbaebabacd" p: "abc"

# Output:
# [0, 6]

# Explanation:
# The substring with start index = 0 is "cba", which is an anagram of "abc".
# The substring with start index = 6 is "bac", which is an anagram of "abc".

def find_anagrams(str, anagram)
  res = []
  histo = Hash.new(0)
  temp_histo = Hash.new(0)
  len = anagram.length
  anagram.each_char {|char|histo[char] += 1}
  str.each_char.with_index do |char, index|
    temp_histo[char] += 1
    prev = str[index - len]
    if index >= len
      temp_histo[prev] -= 1
      temp_histo.delete(prev) if temp_histo[prev] == 0
    end
    res << (index - len + 1) if histo == temp_histo
  end
  res
end
