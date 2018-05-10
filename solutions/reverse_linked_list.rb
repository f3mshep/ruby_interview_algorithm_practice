# Given a linked list, with a provided node class,
# return a linked list

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        self.val = val
        self.next = nil
    end
end

def reverse_linked_list(head)
  prev_node = nil
  current_node = head
  while current_node
    temp_node = current_node.next
    current_node.next = prev_node
    prev_node = current_node
    current_node = temp_node
  end
  prev_node
end