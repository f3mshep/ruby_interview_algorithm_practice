# Starting with an already defined Stack class, make a new class, MaxStack, 
# that returns the largest element in the stack. All input will be integers!

class Stack

  def initialize
    @items = []
  end

  def push(item)
    @items.push(item)
  end

  def pop()
    if @items.empty?
      return nil
    end
    return @items.pop()
  end

  def peek()
    if @items.empty?
      return nil
    end
    return @items[-1]
  end
end

##################################################

class MaxStack
  attr_accessor :max, :prev_maxes, :stack

  def initialize
    self.stack = Stack.new
    self.prev_maxes = Stack.new
  end

  def push(item)
    stack.push(item)
    max = item if max.nil?
    if item > max
      prev_maxes.push(max)
    end
    stack
  end

  def pop
    self.max = prev_maxes.pop
    stack.pop
  end

  def get_max
    self.max
  end

end