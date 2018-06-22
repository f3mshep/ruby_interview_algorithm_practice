require "spec_helper"

def node_to_arr(head)
  current_node = head
  res = []
  while current_node
    res << current_node.val
    current_node = current_node.next
  end
  res
end

describe "#reoder_linked_list" do
  it "reorders a linked list alternating of even length" do
    head = ListNode.new(1)
    b = ListNode.new(2)
    head.next = b
    c = ListNode.new(3)
    b.next = c
    d = ListNode.new(4)
    c.next =
    reorder_linked_list(head)
    expect(node_to_arr(head)).to eq([1,4,2,3])
  end
  it "reorders a linked list alternating of odd length"
    head = ListNode.new(1)
    b = ListNode.new(2)
    head.next = b
    c = ListNode.new(3)
    b.next = c
    d = ListNode.new(4)
    c.next = d
    e = ListNode.new(5)
    d.next = e
    reorder_linked_list(head)
    expect(node_to_arr(head)).to eq([1,5,2,4,3])
  end
end