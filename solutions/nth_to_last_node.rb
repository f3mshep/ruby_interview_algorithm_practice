# Given the head of a singlely linked list, return the nth-to-last element
# of the list

class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next  = nil
  end
end

a = LinkedListNode.new("Angel Food")
b = LinkedListNode.new("Bundt")
c = LinkedListNode.new("Cheese")
d = LinkedListNode.new("Devil's Food")
e = LinkedListNode.new("Eccles")

a.next = b
b.next = c
c.next = d
d.next = e

# Following solution is optimized for time, but not space
# O(n) time complexity
# O(n) space complexity

def kth_to_last(head, k)
    count = 0
    current_node = head
    node_hash = {}
    while current_node
      node_hash[count] = current_node
      count += 1
      current_node = current_node.next
    end
    node_hash[node_hash.keys.size - k].value
end

# The following is optimized for time and space
# O(n) time complexity
# 0(1) space complexity

def kth_to_last_space_optimized(head, k)
  count = 1
  current_node = head
  while current_node
    count += 1
    current_node = current_node.next
  end
  current_node = head
  target =  count - k
  count = 1
  while current_node
    return current_node.value if count == target
    count += 1
    current_node = current_node.next
  end
end

def remove_nth_from_end(head, n)
    return nil if !head.next
    fast = head
    slow = nil
    count = n
    while fast.next
        fast = fast.next
        if count < 0
            slow = slow.next
        elsif count == 0
            slow = head.next
        end
        count -= 1
    end
    if !slow
      head.next = nil
      return head
    end
    slow.next = slow.next.next
    head
end