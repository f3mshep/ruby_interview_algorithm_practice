require "spec_helper"

# Definition for a binary tree node.

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

describe "#is_subtree" do
  it "returns true if subtree matches" do
    a = TreeNode.new(1)
    b = TreeNode.new(2)
    c = TreeNode.new(3)
    d = TreeNode.new(4)
    e = TreeNode.new(5)
    a.left = b
    a.right = c
    c.left = d
    c.right = e
    h = TreeNode.new(3)
    i = TreeNode.new(4)
    j = TreeNode.new(5)
    h.left = i
    h.right = j
    expect(is_subtree(a,h)).to eq(true) 
  end
  it "returns false if subtree matches" do
    a = TreeNode.new(1)
    b = TreeNode.new(2)
    c = TreeNode.new(3)
    d = TreeNode.new(4)
    e = TreeNode.new(5)
    a.left = b
    a.right = c
    c.left = d

    h = TreeNode.new(3)
    i = TreeNode.new(4)
    j = TreeNode.new(5)
    h.left = i
    h.right = j
    expect(is_subtree(a,h)).to eq(false) 
  end
end 