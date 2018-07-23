# You are given a binary tree in which each node contains an integer value.

# Find the number of paths that sum to a given value.

# The path does not need to start or end at the root or a leaf, but it must go downwards (traveling only from parent nodes to child nodes).

# The tree has no more than 1,000 nodes and the values are in the range -1,000,000 to 1,000,000.

# Example:

# root = [10,5,-3,3,2,null,11,3,-2,null,1], sum = 8

#       10
#      /  \
#     5   -3
#    / \    \
#   3   2   11
#  / \   \
# 3  -2   1

# Return 3. The paths that sum to 8 are:

# 1.  5 -> 3
# 2.  5 -> 2 -> 1

def tree_sum(head, target)
  @res = 0
  helper(head, target, 0, {0=> true})
  return @res
end

def helper(node, target, sum, cache)
  return if node.nil?
  current_sum = sum + node.val
  pair = current_sum - target
  @res += 1 if cache[pair]
  cache[current_sum] = true
  helper(node.left, target, current_sum, cache)
  helper(node.right, target, current_sum, cache)
  cache.delete(current_sum)
end