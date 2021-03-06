# Given an integer array, you need to find one continuous subarray that if you only sort 
# this subarray in ascending order, then the whole array will be sorted in ascending order, too.

# You need to find the shortest such subarray and output its length.

# Example 1:

# Input: [2, 6, 4, 8, 10, 9, 15]
# Output: 5
# Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the whole 
# array sorted in ascending order.

# Note:

#     Then length of the input array is in range [1, 10,000].
#     The input array may contain duplicates, so ascending order here means <=.

def find_unsorted_subarray(nums)
  sum = 0
  index = 0
  sorted = nums.sort
  while index < nums.length
    if nums[index] == sorted[index]
      sum += 1
    else
      break
    end
    index += 1
  end
  return 0 if sum == nums.length
  index = nums.length - 1
  while index >= 0
    if nums[index] == sorted[index]
      sum += 1
    else
      break
    end
    index -= 1
  end
  nums.length - sum
end