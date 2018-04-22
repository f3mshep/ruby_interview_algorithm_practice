# Starting from a 0 index, return the nth Fibonacci number. 

# fib(0)   => 0
# fib(1)   => 1
# fib(2)   => 1
# fib(3)   => 2
# fib(4)   => 3

def fib(n)
  count = 1
  a = 0
  b = 1
  if n < 0 
    raise Exception, ("N must be more than 0")
  elsif n < 2
    return n
  end
  while count < n
    fib = a + b
    a =  b
    b = fib
    count += 1
  end
  return fib
end