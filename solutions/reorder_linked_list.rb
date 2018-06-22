# Given a singly linked list L: L0→L1→…→Ln-1→Ln,
# reorder it to: L0→Ln→L1→Ln-1→L2→Ln-2→…

# You may not modify the values in the list's nodes, only nodes itself may be changed.

# Example 1:

# Given 1->2->3->4, reorder it to 1->4->2->3.

# Example 2:

# Given 1->2->3->4->5, reorder it to 1->5->2->4->3.

require 'pry'

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def reorder_linked_list(head)
  return head if !head.next || !head.next.next
  stack = []
  current_node = head
  is_pop = true
  while current_node
    stack.push(current_node)
    current_node = current_node.next
  end
  prev_node = stack.shift
  while !stack.empty?
    if is_pop
      current_node = stack.pop
    else
      current_node = stack.shift
    end
    is_pop = !is_pop
    current_node.next = nil
    prev_node.next = current_node
    prev_node = current_node
  end
  head
end