require "spec_helper"

# If you are reading this, and scratching your head, it is because you can't
# represent a linked list as well without using memory pointers
# a node in a classic linked list contains a reference to the next node
# as a memory pointer. That is why we accept changing the value
# think of it more like changing the memory pointer to the next element in the
# linked list

describe "#delete_node" do

  before :each do
    @a = LinkedListNode.new('A')
    @b = LinkedListNode.new('B')
    @c = LinkedListNode.new('C')

    @a.next = @b
    @b.next = @c
  end

  it "deletes a node from the middle of a linked list" do
    delete_node(@b)
    expect(@b.value).to eq('C')
  end
  it "deletes a node from the end of a linked list" do
    delete_node(@c)
    expect(@c.value).to eq(nil)
  end

end