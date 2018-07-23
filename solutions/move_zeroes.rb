# Given an array nums, write a function to move all 0's to the end of it while maintaining 
# the relative order of the non-zero elements.

# Example:
# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]

# You must do this in-place without making a copy of the array.
# Minimize the total number of operations.

def move_zeroes(nums)
  return nums if nums.empty?
  last_zero_index = nil
  nums.size.times do |index|
    curr_num = nums[index]
    if curr_num.nonzero?
      if last_zero_index
        nums[last_zero_index], nums[index] = nums[index], nums[last_zero_index]
        last_zero_index += 1
      end
    elsif last_zero_index.nil?
      last_zero_index = index
    end
  end
  nums
end