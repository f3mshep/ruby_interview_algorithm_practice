# Given a singly linked list, determine if it is a palindrome.
# solution must be in O(1) space and O(n) time

# Example 1:
# Input: 1->2
# Output: false

# Example 2:
# Input: 1->2->2->1
# Output: true

def palindrome_linked_list(head)
  return true if !head || !head.next
  mid = get_mid(head)
  current = head
  prev = nil
  while current != mid
    after = current.next
    current.next = prev
    prev = current
    current = after
  end
  left, right = prev, after
  while left
    return false if left.val != right.val
    left = left.next
    right = right.next
  end
  true
end

def get_mid(head)
  slow, fast = head, head
  while fast.next && fast.next.next
    fast = fast.next.next
    slow = slow.next
  end
  slow
end