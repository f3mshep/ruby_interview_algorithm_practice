require "spec_helper"

# Definition for a binary tree node.

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

describe "#tree_diameter" do
  it "returns the diameter of the tree" do
    a = TreeNode.new(1)
    b = TreeNode.new(2)
    c = TreeNode.new(3)
    d = TreeNode.new(4)
    e = TreeNode.new(5)
    a.right = b
    a.left = c
    c.right = d
    c.left = e
    expect(tree_diameter(a)).to eq(3) 
  end
end 