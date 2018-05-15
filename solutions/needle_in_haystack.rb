# Return the index of the first occurrence of needle in haystack, or -1 if
# needle is not part of haystack.

# Example 1:
# Input: haystack = "hello", needle = "ll"
# Output: 2

# Example 2:
# Input: haystack = "aaaaa", needle = "bba"
# Output: -1

# Return 0 if the string is empty

def needle_in_haystack(haystack, needle)
  hay_length = haystack.length
  return -1 if needle.length > hay_length
  return 0 if needle.length < 1
  initial_index = 0
  ending_index = needle.length - 1
  while ending_index < hay_length
    return initial_index if haystack[initial_index..ending_index] == needle
    initial_index += 1
    ending_index += 1
  end
  -1
end