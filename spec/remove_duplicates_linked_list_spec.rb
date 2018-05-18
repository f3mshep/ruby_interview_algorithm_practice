require "spec_helper"

describe "#remove_duplicates_linked_list" do
  before :each do
    @a = ListNode.new(1)
    @b = ListNode.new(2)
    @c = ListNode.new(2)
    @d = ListNode.new(3)
    @a.next = @b
    @b.next = @c
    @c.next = @d
  end
  it "returns the head of a linked list that has no duplicate values do" do
    current_node = remove_duplicates_linked_list(@a)
    res = []
    answers = [1,2,3]
    while current_node
      res.push current_node.val
      current_node = current_node.next
    end
    expect(res).to eq(answers)
  end
end