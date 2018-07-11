# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

# push(x) -- Push element x onto stack.
# pop() -- Removes the element on top of the stack.
# top() -- Get the top element.
# getMin() -- Retrieve the minimum element in the stack.

class MinStack

  attr_accessor :stack, :min_stack

  def initialize
    self.stack = []
    self.min_stack = []
  end

  def pop
    min_stack.pop if stack.pop == min_stack.last
  end

  def push(x)
    # push element on to top of stack
    self.stack << x
    self.min_stack << x if self.min_stack.empty? || x <= self.min_stack.last
  end

  def top
    # return the top element of the stack
    stack.last
  end

  def get_min
    # return the smallest element in the stack
    min_stack.last
  end

end