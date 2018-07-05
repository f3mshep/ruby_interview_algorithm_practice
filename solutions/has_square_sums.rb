# Given a non-negative integer c, your task is to decide
# whether there are two integers a and b such that a2 + b2 = c.

# Example 1:
# Input: 5
# Output: True
# Explanation: 1 * 1 + 2 * 2 = 5
# Example 2:
# Input: 3
# Output: False

def has_square_sum(num)
  return true if num == 0
  num.times do |n|
    squared = n**2
    return false if squared > num
    difference = num - squared
    root = Math.sqrt(difference)
    return true if is_int?(root)
  end
  false
end

def is_int?(num)
  num % 1 == 0
end