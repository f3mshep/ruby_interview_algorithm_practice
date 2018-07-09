require "spec_helper"

describe "#is_symmetric_tree" do
  it "returns true if tree is symmetric" do
    a = TreeNode.new(1)
    b = TreeNode.new(2)
    c = TreeNode.new(2)
    d = TreeNode.new(3)
    e = TreeNode.new(4)
    f = TreeNode.new(4)
    g = TreeNode.new(3)
    a.left = b
    a.right = c
    b.left = d
    b.right = e
    c.left = f
    c.right = g
    expect(is_symmetric_tree(a)).to eq(true)
  end
  it "returns false if tree is asymmetric" do
    a = TreeNode.new("a")
    b = TreeNode.new("b")
    c = TreeNode.new("c")
    a.left = b
    a.right = c
    expect(is_symmetric_tree(a)).to eq(false)
  end
end