require 'pry'

# Starting from a 0 index, return the nth Fibonacci number.

# fib(0)   => 0
# fib(1)   => 1
# fib(2)   => 1
# fib(3)   => 2
# fib(4)   => 3

#iterative stack

def fibb(n)
  return n if n < 2
  count = n
  prev = 0
  current = 1
  while count > 1
    temp = prev + current
    prev = current
    current = temp
    count -= 1
  end
  current
end

def recursive_fibb(n)
  puts "n is currently: " + n.to_s
  return n if n < 2

  return recursive_fibb(n - 1) + recursive_fibb(n - 2)
end

#how does this black magic recursive fuckery work?

puts "\n"
puts 'final answer ' + recursive_fibb(6).to_s