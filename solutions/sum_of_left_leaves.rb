# Find the sum of all left leaves in a given binary tree.

# Example:

#     3
#    / \
#   9  20
#     /  \
#    15   7

# There are two left leaves in the binary tree, with values 9 and 15 respectively. Return 24.


def sum_of_left_leaves(root)
  sum = 0
  current_node = root
  return sum if !current_node
  stack = []
  while current_node
      left, right = current_node.left, current_node.right
      if left
          sum += left.val if is_leaf(left)
          stack << left
      end
      stack << right if right
      current_node = stack.pop
  end
  sum
end

def is_leaf(node)
  !node.right && !node.left
end