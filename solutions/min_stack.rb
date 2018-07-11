# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

# push(x) -- Push element x onto stack.
# pop() -- Removes the element on top of the stack.
# top() -- Get the top element.
# getMin() -- Retrieve the minimum element in the stack.

class MinStack

  attr_accessor :stack, :min_stack, :min

  def initialize
    self.stack = []
    self.min_stack = []
  end

  def pop
    element = stack.pop
    if element == min
      min = min_stack.pop
    end
    element
  end

  def push(elem)
    # push element on to top of stack
    if elem < min
      min_stack.push(min)
      min = elem
    end
    stack << elem
  end

  def top
    # return the top element of the stack
    stack.last
  end

  def get_min
    # return the smallest element in the stack
    min
  end

end