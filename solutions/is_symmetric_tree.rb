# Given a binary tree, check whether it is a mirror of itself (ie, symmetric
#   around its center).

# For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

#     1
#    / \
#   2   2
#  / \ / \
# 3  4 4  3

# But the following [1,2,2,null,3,null,3] is not:

#     1
#    / \
#   2   2
#    \   \
#    3    3

# Definition for a binary tree node.

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def is_symmetric_tree(root)
  return true if !root
  siblings = [[root.left, root.right]]
  while siblings.length > 0
    left, right = siblings.pop
    return false if !check_siblings(left, right)
    siblings << [left.left, right.right] if left || right
    siblings << [left.right, right.left] if left || right
  end
  true
end

def check_siblings(left, right)
  return true if left.nil? && right.nil?
  return false if left.nil? || right.nil?
  left.val == right.val
end
