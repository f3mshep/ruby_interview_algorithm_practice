require "spec_helper"

describe "#delete_node" do

  before :each do
    @a = LinkedListNode.new('A')
    @b = LinkedListNode.new('B')
    @c = LinkedListNode.new('C')

    @a.next = @b
    @b.next = @c
  end

  it "deletes a node from the middle of a linked list" do
  end
  it "deletes a node from the end of a linked list" do
  end
end