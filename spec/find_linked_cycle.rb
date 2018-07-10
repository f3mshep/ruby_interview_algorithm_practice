require "spec_helper"

class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    self.value = value
    self.next  = nil
  end
end

describe "#find_linked_cycle" do
  it "returns node where cycle begins in linked list" do
    a = LinkedListNode("a")
    b = LinkedListNode("b")
    c = LinkedListNode("c")
    a.next = b
    b.next = c
    c.next = a
    expect(find_linked_cycle(a)).to eq(c)
  end
  it "returns nil if there is no cycle" do
    a = LinkedListNode("a")
    b = LinkedListNode("b")
    c = LinkedListNode("c")
    a.next = b
    b.next = c
  end
end