# Given a sorted linked list, delete all duplicates such that each
# element appear only once.

# Example 1:
# Input: 1->1->2
# Output: 1->2

# Example 2:
# Input: 1->1->2->3->3
# Output: 1->2->3

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        self.val = val
        self.next = nil
    end
end

def remove_duplicates_linked_list(head)

end