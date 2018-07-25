# Invert a binary tree.

# Example:

# Input:

#      4
#    /   \
#   2     7
#  / \   / \
# 1   3 6   9

# Output:

#      4
#    /   \
#   7     2
#  / \   / \
# 9   6 3   1

def invert_tree(root)
  return root if !root
  stack = [root]
  while stack.length > 0
    node = stack.pop
    node.left , node.right = node.right, node.left
    stack << node.left if node.left
    stack << node.right if node.right
  end
  root
end
