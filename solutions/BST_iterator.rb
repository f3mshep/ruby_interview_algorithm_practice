# Implement an iterator over a binary search tree (BST). Your iterator will be 
# initialized with the root node of a BST.
# Calling next() will return the next smallest number in the BST.

# Note: next() and hasNext() should run in average O(1) time and uses O(h) memory, 
# where h is the height of the tree. 

class BSTIterator
  # @param {TreeNode} root
  attr_accessor :stack
  
  def initialize(root)
      self.stack = []
      get_left(root)
  end

  # @return {Boolean}
  def has_next
      !stack.empty?
  end
  
  def get_left(root)
      current_node = root
      while current_node
          self.stack << current_node
          current_node = current_node.left
      end
      stack
  end

  # @return {Integer}
  def next
      node = stack.pop
      get_left(node.right)
      node.val
  end
end