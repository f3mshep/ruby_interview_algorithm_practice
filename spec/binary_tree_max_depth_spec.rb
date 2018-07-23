require "spec_helper"

describe "#binary_tree_max_depth" do
  it "returns the max depth of a binary tree" do
    a = TreeNode.new(10)
    b = TreeNode.new(5)
    c = TreeNode.new(-3)
    d = TreeNode.new(3)
    e =TreeNode.new(2)
    f = TreeNode.new(11)
    g = TreeNode.new(3)
    h = TreeNode.new(-2)
    i = TreeNode.new(1)
    a.left = b
    a.right = c
    c.right = f
    b.left = d
    b.right = e
    d.left = g
    d.right = h
    e.right = i
    expect(binary_tree_max_depth(a)).to eq(4)
  end
end