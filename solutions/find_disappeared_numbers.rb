# Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), 
# some elements appear twice and others appear once.

# Find all the elements of [1, n] inclusive that do not appear in this array.

# Could you do it without extra space and in O(n) runtime? You may assume 
# the returned list does not count as extra space.

# Example:

# Input:
# [4,3,2,7,8,2,3,1]

# Output:
# [5,6]

def find_disappeared_numbers(nums)
  res = []
  nums.unshift(0)
  nums.each {|num| nums[num.abs] = -(nums[num.abs].abs)}
  nums.each_with_index {|num, index| res << index if num > 0 }
  res
end