# Given a positive integer n, break it into the sum of at least two positive
# integers and maximize the product of those integers. Return the maximum product
# you can get.

# For example, given n = 2, return 1 (2 = 1 + 1); given n = 10,
# return 36 (10 = 3 + 3 + 4).

def integer_break(n)
  return n-1 if (n < 4)
  return 4 if  (n == 4)
  dup = n
  sum = 1
  while(dup > 4)
    dup = dup - 3
    sum = sum * 3
  end
  sum * dup
end