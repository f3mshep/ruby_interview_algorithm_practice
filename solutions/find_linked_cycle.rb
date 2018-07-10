# Given a linked list, return the node where the cycle begins. If there is no cycle, return null.

# Note: Do not modify the linked list.

# Follow up:
# Can you solve it without using extra space?

def find_linked_cycle(head)
  fast = head.next
  slow = head
  while fast != slow
    begin
      fast = fast.next.next
      slow = slow.next
    rescue
      return nil
    end
  end
  fast = head
  while fast
    return fast if slow == fast
    fast.next
    slow.next
  end
end