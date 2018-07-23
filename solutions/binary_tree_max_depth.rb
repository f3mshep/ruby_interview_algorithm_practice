# Given a binary tree, find its maximum depth.

# The maximum depth is the number of nodes along the longest 
# path from the root node down to the farthest leaf node.

# Note: A leaf is a node with no children.

# Example:

# Given binary tree [3,9,20,null,null,15,7],

#     3
#    / \
#   9  20
#     /  \
#    15   7

# return its depth = 3

# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

TERM = "\0"

def binary_tree_max_depth(root)
  queue = [root, TERM]
  depth = 1
  while queue
    current_node = queue.shift
    if current_node == TERM
      depth += 1
      queue.push(TERM)
    else
      queue.push(current_node.left) if current_node.left
      queue.push(current_node.right) if current_node.right
    end
    return depth if queue.size == 1
  end
end
