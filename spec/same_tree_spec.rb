require "spec_helper"

a = TreeNode.new(1)
b = TreeNode.new(2)
c = TreeNode.new(3)
a.left = b
a.right = c

d = TreeNode.new(1)
e = TreeNode.new(2)
f = TreeNode.new(3)
d.left = e
d.right = f

describe "#same_tree" do
  it "returns a boolean indicating if the two trees are the same" do
    expect(same_tree(a, d)).to eq(true)
  end
end