require "spec_helper"

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

describe "#tree_sum" do
  it "gives the total number of paths that add to sum" do
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
    expect(tree_sum(a, 8)).to eq(3)
  end
end