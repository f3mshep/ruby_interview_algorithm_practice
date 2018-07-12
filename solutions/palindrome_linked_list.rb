# Given a singly linked list, determine if it is a palindrome.
# solution must be in O(1) space and O(n) time

# Example 1:
# Input: 1->2
# Output: false

# Example 2:
# Input: 1->2->2->1
# Output: true

def palindrome_linked_list(head)
  # edge cases whoo
  return true if !head || !head.next

  # use fast and slow pointers to find midpoint
  mid, fast = head, head
  while fast.next && fast.next.next
    fast = fast.next.next
    mid = mid.next
  end
  if fast.next
    is_even = true
    mid = mid.next
  end

  current, prev = head,nil
  # reverse linked list until mid point
  while current != mid
    after = current.next
    current.next = prev
    prev = current
    current = after
  end
  # skip over mid point if length of list is odd
  current = current.next if !is_even
  left, right = prev, current
  while left
    return false if left.val != right.val
    left = left.next
    right = right.next
  end
  true
end