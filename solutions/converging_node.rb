# Given two singly-linked lists of (possibly) differing lengths that
# converge at some point, find the node at which they converge.

class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    self.value = value
    self.next  = nil
  end

end

def converging_node(list_a, list_b)
  difference = node_difference(list_a, list_b)

  if difference > 0
    long, short = list_a, list_b
  else
    long, short = list_b, list_a
    difference = difference.abs
  end

  while difference > 0
    difference -= 1
    long = long.next
  end

  while long && short
    return long if long == short
    long = long.next
    short = short.next
  end

  nil
end

def node_difference(list_a, list_b)
  node_length(list_a) - node_length(list_b)
end

def node_length(list)
  current_node = list
  count = 0
  while current_node
    count += 1
    current_node = current_node.next
  end
  count
end

