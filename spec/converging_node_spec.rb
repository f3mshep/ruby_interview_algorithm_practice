require "spec_helper"

describe "#converging_node" do
  it "returns the node where two linked lists converge" do
    a = LinkedListNode.new('a')
    b = LinkedListNode.new('b')
    d = LinkedListNode.new('d')
    e = LinkedListNode.new('e')
    c = LinkedListNode.new('c')
    f = LinkedListNode.new('f')
    c.next = f
    a.next = b
    b.next = c
    d.next = e
    e.next = c
    expect(converging_node(a, d)).to eq(c)
  end
  it "returns converging node of different length lists" do
    a = LinkedListNode.new('a')
    b = LinkedListNode.new('b')
    d = LinkedListNode.new('d')
    e = LinkedListNode.new('e')
    c = LinkedListNode.new('c')
    f = LinkedListNode.new('f')
    a.next = b
    b.next = c
    c.next = d
    d.next = e
    f.next = c
    expect(converging_node(a, f)).to eq(c)
  end
  it "returns nil if the lists never converge" do
    a = LinkedListNode.new('a')
    b = LinkedListNode.new('b')
    d = LinkedListNode.new('d')
    e = LinkedListNode.new('e')
    c = LinkedListNode.new('c')
    f = LinkedListNode.new('f')
    a.next = b
    b.next = c
    d.next = e
    e.next = f
    expect(converging_node(a, d)).to eq(nil)
  end
end