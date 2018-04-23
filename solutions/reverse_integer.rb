# Given a 32-bit signed integer, reverse digits of an integer.
# If the new integer would overflow, return 0

# Input: 123
# Output: 321
# Example 2:
# Input: -123
# Output: -321
# Example 3:
# Input: 120
# Output: 21


def reverse_integer(x)
    res = ""
    is_negative = x < 0
    numbers = x.to_s
    i = numbers.length - 1
    while i >= 0
        res << numbers[i]
        i -= 1
    end
    res = res.to_i
    return 0 if res > 2147483647
    is_negative ? -(res) : res
end