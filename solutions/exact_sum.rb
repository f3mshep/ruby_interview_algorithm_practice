# Given an array, and a sum, return true if there are two numbers that add up exactly to the target sum.
# The array will contain only whole, positive integers.You can only use each number once.

sum = 8

numbers = [4,4,3,1]

# brute force
# O(n^2)

def isSumNaive(numbers, sum)
  numbers.each_with_index do |number_a, index_a|
    pair =  sum - number_a
    numbers.each_with_index do |number_b, index_b|
      next if index_b == index_a
      return true if number_b == pair
    end
  end
  false
end

#hashtables rox my sox

def is_sum(numbers, sum)
  # iterate through array, storing each number as a key, value as index
  # iterate through the array again, calculate pair and lookup if pair exists
  pairs = {}
  numbers.each_with_index do |number, index|
    pairs[number] = index
  end
  numbers.each_with_index do |number, index|
    pair = sum - number
    return true if pairs[pair] && pairs[pair] != index
  end
  false
end

# O(n)