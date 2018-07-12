require "spec_helper"

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

describe "#palindrome_linked_list" do
  it "returns true if linked list is a palindrome" do
    a = ListNode.new(1)
    b = ListNode.new(2)
    c = ListNode.new(2)
    d = ListNode.new(1)
    a.next = b
    b.next = c
    c.next = d
    g = ListNode.new(1)
    h = ListNode.new(1)
    i = ListNode.new(2)
    j = ListNode.new(1)
    k = ListNode.new(1)
    g.next = h
    h.next = i
    i.next = j
    j.next = k
    expect(palindrome_linked_list(a)).to eq(true)
    expect(palindrome_linked_list(g)).to eq(true)
  end
  it "returns false if linked list is not a palindrome" do
    a = ListNode.new(1)
    b = ListNode.new(2)
    c = ListNode.new(3)
    d = ListNode.new(4)
    e = ListNode.new(5)
    a.next = b
    b.next = c
    c.next = d
    d.next = e
    f = ListNode.new(1)
    g = ListNode.new(2)
    h = ListNode.new(3)
    i = ListNode.new(4)
    f.next = g
    g.next = h
    h.next = i
    expect(palindrome_linked_list(a)).to eq(false)
    expect(palindrome_linked_list(f)).to eq(false)
  end
end