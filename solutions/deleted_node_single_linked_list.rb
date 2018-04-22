# Given ONLY a node in a single-linked list, delete that node from a linked list. You may assume each node is an instance of the following
# class: 

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

a.next = b
b.next = c

#####################################################################

# Please note that there are side effects in this method.
# However, it is the best possible option we have with no other information about the linked  list

def delete_node(current_node)
  old_node = current_node.next
  if old_node
    current_node.next = old_node.next
    current_node.value = old_node.value
  else
    # sorta works, can also raise an exception here
    current_node.value = nil
  end
end