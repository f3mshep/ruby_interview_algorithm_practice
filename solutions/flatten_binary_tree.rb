# Given a binary tree, flatten it to a linked list in-place.

# For example, given the following tree:For example, given the following tree:

#     1
#    / \
#   2   5
#  / \   \
# 3   4   6
# The flattened tree should look like:

# 1
#  \
#   2
#    \
#     3
#      \
#       4
#        \
#         5
#          \
#           6
require 'pry'

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

a = TreeNode.new(1)
b = TreeNode.new(2)
c = TreeNode.new(3)
d = TreeNode.new(4)
e = TreeNode.new(5)
f = TreeNode.new(6)

a.left = b
a.right = e
b.left = c
b.right = d
e.right = f

def flatten_tree(root)
  left_stack = [root]
  right_stack = []
  parent_node = nil
  while true
    if !left_stack.empty?
      current_node = left_stack.pop
    elsif !right_stack.empty?
      current_node = right_stack.pop
      parent_node.right = current_node
    else
      return root
    end
    if current_node.right
        right_stack.push(current_node.right)
    end
    if current_node.left
        left_stack.push(current_node.left)
        current_node.right = current_node.left
        current_node.left = nil
    end
    parent_node = current_node
  end

end

flatten_tree(a)