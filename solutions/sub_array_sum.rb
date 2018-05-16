# Given an integer array nums, find the contiguous subarray (containing at
# least one number) which has the largest sum and return its sum.

# Example:

# Input: [-2,1,-3,4,-1,2,1,-5,4],
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.
def sub_array_sum(nums)
  greatest_sum = nums.first
  current_sum = 0
  nums.each do |num|
    current_sum += num
    greatest_sum = current_sum if current_sum > greatest_sum
    current_sum = 0 if current_sum < 0
  end
  greatest_sum
end
