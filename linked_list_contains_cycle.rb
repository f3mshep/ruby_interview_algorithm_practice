# Detect if a linked list contains a cycle. Optimize for speed AND complexity.

class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next  = nil
  end
end

a = LinkedListNode.new('A')
b = LinkedListNode.new('B')
c = LinkedListNode.new('C')
d = LinkedListNode.new('D')
e = LinkedListNode.new('E')
f = LinkedListNode.new('F')

a.next = b
b.next = c
c.next = d
d.next = c

# We can reduce space here
def unoptimized_contains_cycle(head)
  histo = {}
  node = head
  while node
    if histo[node]
      return true
    else
      histo[node] = true
    end
    node = node.next
  end
  false
end

# more perfect solution

def contains_cycle(head)
  count = 0
  slow_node = head
  fast_node = head
  while fast_node
    if count.even?
      fast_node = fast_node.next
    else
      fast_node = fast_node.next
      slow_node = slow_node.next
    end
    count += 1
    return true if slow_node == fast_node 
  end
  false
end

puts contains_cycle(a)