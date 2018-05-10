require "spec_helper"



describe "#reverse_linked_list" do

  before :each do
    @a = ListNode.new(1)
    @b = ListNode.new(2)
    @c = ListNode.new(3)
    @a.next = @b
    @b.next = @c
  end

  it "reverses a linked list" do
    new_head = reverse_linked_list(@a)
    current_node = new_head
    res = []
    while current_node
      res << current_node.val
      current_node = current_node.next
    end
    expect(res).to eq([3,2,1])
  end

end