# Given an array of non-negative integers, you are initially positioned at the first index of the array.
# Each element in the array represents your maximum jump length at that position.
# Determine if you are able to reach the last index.

# Input: [2,3,1,1,4]
# Output: true
# Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.


def arr_jumper(num_arr)
  last_index = num_arr.length - 1
  max_index = num_arr.first - 1
  return true if num_arr.length < 2
  num_arr.each_with_index do |max_jump, curr_index|
    return false if curr_index > max_index
    if curr_index + max_jump > max_index
      max_index = curr_index + max_jump
    end
    return true if max_index >= last_index
  end
end

# Solution:
# Big O(n)
# Space Complexity O(1)