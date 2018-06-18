# Given two binary trees, write a function to check if they are the same or not.
# Two binary trees are considered the same if they are structurally identical
# and the nodes have the same value.

# Example 1:

# Input:     1         1
#           / \       / \
#          2   3     2   3

#         [1,2,3],   [1,2,3]

# Output: true

# Example 2:

# Input:     1         1
#           /           \
#          2             2

#         [1,2],     [1,nil,2]

# Output: false

# Example 3:

# Input:     1         1
#           / \       / \
#          2   1     1   2

#         [1,2,1],   [1,1,2]

# Output: false

# Definition for a binary tree node.

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def same_tree(left_tree, right_tree)

end