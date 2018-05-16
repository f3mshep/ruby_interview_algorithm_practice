# Given an array nums and a value val, remove all instances of that value
# in-place and return the new length.Do not allocate extra space for another
# array, you must do this by modifying the input array in-place with O(1) extra
# memory.The order of elements can be changed. It doesn't matter what you leave
# beyond the new length.

def remove_element_in_place(nums, val)
  index = 0
  while index < nums.length
    current_number = nums[index]
    if current_number == val
      nums.delete_at(index)
    else
      index += 1
    end
  end
  nums.length
end