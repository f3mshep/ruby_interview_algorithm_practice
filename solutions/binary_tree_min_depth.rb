# Given a binary tree, find its minimum depth.

# The minimum depth is the number of nodes along the shortest path from the
# root node down to the nearest leaf node.

# Note: A leaf is a node with no children.

def minimum_depth_binary_tree(head)
  return 0 if !head
  stack = [{node:head, depth: 1}]
  depth = Float::INFINITY
  while !stack.empty?
    current_node = stack.shift
    if current_node[:node].left
      stack.push({node: current_node[:node].left, depth: current_node[:depth] + 1})
    end
    if current_node[:node].right
      stack.push({node: current_node[:node].right, depth: current_node[:depth] + 1})
    end
    if !current_node[:node].left && !current_node[:node].right
      depth = [current_node[:depth], depth].min
    end
  end
  return depth
end