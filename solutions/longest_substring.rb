# Given a string, find the length of the longest substring without repeating characters.

# Examples:
# Given "abcabcbb", the answer is "abc", which the length is 3.
# Given "bbbbb", the answer is "b", with the length of 1.
# Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.


#Solutions:
FIXNUM_MAX = (2**(0.size * 8 -2) -1)
'dbdbbvdf'

# Speed Complexity: O(n)
# Space Complexity: O(n)


#the flow is as thus:
# make a hash that contains the last known index of each character
# set up a left and a right pointer, which is the distance between 2 characters

def length_of_longest_substring(target_string)
  return 0 if target_string.length < 1
  max_so_far = 0
  index_hash = {}
  left_pointer = 0
  right_pointer = 0
  target_string.each_char.with_index do |ch, index|
    last_index_seen = index_hash[ch]
    if last_index_seen && last_index_seen.between?(left_pointer, right_pointer)
      sub_length = right_pointer - left_pointer + 1
      max_so_far = [max_so_far, sub_length].max
      left_pointer = last_index_seen + 1
    end
      right_pointer = index
      index_hash[ch] = right_pointer
  end
  last_fragment = target_string[left_pointer..right_pointer]
  has_repeats?(last_fragment) ? max_so_far : [last_fragment.length, max_so_far].max
end

def has_repeats?(str)
  histo = {}
  str.each_char do |ch|
    return true if histo[ch]
    histo[ch] = true
  end
  false
end


