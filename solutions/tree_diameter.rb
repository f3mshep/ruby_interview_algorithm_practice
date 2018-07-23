def depth(node)
  return 0 if node.nil?
  left = depth(node.left)
  right = depth(node.right)
  @max_depth = [@max_depth, (left + right)].max
  return [left, right].max + 1
end

def tree_diameter(head)
  @max_depth = 0
  return 0 if !head
  depth(head)
  @max_depth
end