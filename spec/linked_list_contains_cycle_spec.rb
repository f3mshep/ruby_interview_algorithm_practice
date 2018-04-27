require "spec_helper"

describe "#contains_cycle" do
  before :each do
    @a = LinkedListNode.new('A')
    @b = LinkedListNode.new('B')
    @c = LinkedListNode.new('C')
    @d = LinkedListNode.new('D')
    @e = LinkedListNode.new('E')
    @f = LinkedListNode.new('F')
    @g = LinkedListNode.new('G')

    @a.next = @b
    @b.next = @c
    @c.next = @d
    @d.next = @c
    @e.next = @f
    @f.next = @g
  end
  it "returns true if the linked list contains a cycle" do
    expect(contains_cycle(@a)).to eq(true)
  end
  it "returns false if the linked list does not contain a cycle" do
    expect(contains_cycle(@e)).to eq(false)
  end
end