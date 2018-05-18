require 'pry'
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        self.val = val
        self.next = nil
    end
end

def remove_duplicates_linked_list(head)
  known_values = Hash.new(0)
  current_node = head
  prev_node = head
  while current_node
    if known_values[current_node.val] > 0
      prev_node.next = current_node.next
    else
      known_values[current_node.val] += 1
      prev_node = current_node
    end
    current_node = current_node.next
  end
  head
end
