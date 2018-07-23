
def tree_diameter(head)
  diameter = longest_path(head, 0, 0)
end

def longest_path(node, length, diameter)
  return 0 if node.nil?
  length = length + 1
  left = longest_path(node.left,length,diameter).first
  right = longest_path(node.right, length, diameter).first
  diameter = [left + right, diameter].max
  return [[left, right].max, diameter]
end