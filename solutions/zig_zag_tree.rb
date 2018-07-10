# Given a binary tree, return the zigzag level order traversal of its nodes' values. 
# (ie, from left to right, then right to left for the next level and alternate between).

# For example:
# Given binary tree [3,9,20,null,null,15,7],

#     3
#    / \
#   9  20
#     /  \
#    15   7

# return its zigzag level order traversal as:

# [
#   [3],
#   [20,9],
#   [15,7]
# ]

# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}

MARKER = "\0"

def zig_zag_tree(root)
  queue = [root, MARKER]
  vals = []
  traveled = []
  zigs = false
  return traveled if !root
  while queue
    current_node = queue.shift
    if current_node == MARKER
      vals = vals.reverse if zigs
      traveled.push(vals)
      return traveled if queue.empty?
      vals = []
      queue.push(MARKER)
      zigs = !zigs
    else
      queue.push current_node.left if current_node.left
      queue.push current_node.right if current_node.right
      vals.push(current_node.val)
    end
  end
end
