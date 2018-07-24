# Given two non-empty binary trees s and t, check whether tree t has exactly the same 
# structure and node values with a subtree of s. A subtree of s is a tree consists of 
# a node in s and all of this node's descendants. The tree s could also be considered 
# as a subtree of itself.

# Example 1:
# Given tree s:

#      3
#     / \
#    4   5
#   / \
#  1   2

# Given tree t:

#    4 
#   / \
#  1   2

# Return true, because t has the same structure and node values with a subtree of s.

# Example 2:
# Given tree s:

#      3
#     / \
#    4   5
#   / \
#  1   2
#     /
#    0

# Given tree t:

#    4
#   / \
#  1   2

# Return false. 

def is_subtree(root, sub)
  stack = [root]
  while !stack.empty?
    current = stack.pop
    stack.push current.left if current.left
    stack.push current.right if current.right
    if current.val == sub.val
      return true if is_same_tree(current, sub)
    end
  end
  false
end

def is_same_tree(tree_a, tree_b)
  return true if tree_a.nil? && tree_b.nil?
  return false if tree_a.nil? || tree_b.nil?
  if tree_a.val == tree_b.val
    return is_same_tree(tree_a.left, tree_b.left) && is_same_tree(tree_a.right, tree_b.right)
  end
  return false
end