require "spec_helper"

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

describe "#zig_zag_tree" do
  it "returns an array of arrays of a tree in zig-zag traversal" do
    a = TreeNode.new(3)
    b = TreeNode.new(9)
    c = TreeNode.new(20)
    d = TreeNode.new(15)
    e = TreeNode.new(7)
    a.left = b
    a.right = c
    c.left = d
    c.right = e
    expect(zig_zag_tree(a)).to eq([
      [3],
      [20,9],
      [15,7]
    ])
  end
end