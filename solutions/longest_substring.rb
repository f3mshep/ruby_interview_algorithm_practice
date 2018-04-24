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

def length_of_longest_substring(target_string)
  max_so_far = 1
  index_hash = {}
  left_pointer = 0
  right_pointer = 0
  target_string.each_char.with_index do |ch, index|
    if index_hash[ch]
      curr_len = (left_pointer - right_pointer).abs + 1
      max_so_far = [max_so_far, curr_len].max
      left_pointer = index_hash[ch] + 1
    end
    right_pointer = index
    index_hash[ch] = index
  end
  curr_len = (left_pointer - right_pointer).abs + 1
  max_so_far = [max_so_far, curr_len].max
end


#the flow is as thus:
# make a hash that contains the last known index of each character
# set up a left and a right pointer, which is the distance between 2 characters
#