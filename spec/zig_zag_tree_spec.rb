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
    f = TreeNode.new(1)
    g = TreeNode.new(2)
    h = TreeNode.new(3)
    i = TreeNode.new(4)
    j = TreeNode.new(5)
    f.left = g
    f.right = h
    g.right = i
    h.right = j
    expect(zig_zag_tree(a)).to eq([
      [3],
      [20,9],
      [15,7]
    ])
    expect(zig_zag_tree(f)).to eq([[1],[3,2],[4,5]])
    expect(zig_zag_tree(nil)).to eq([])
  end
end