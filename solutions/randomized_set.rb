class RandomizedSet
  attr_accessor :set
=begin
    Initialize your data structure here.
=end
    def initialize()
      self.set = Hash.new
    end


=begin
    Inserts a value to the set. Returns true if the set did not already contain the specified element.
    :type val: Integer
    :rtype: Boolean
=end
    def insert(val)
      return false if includes?(val)
      set[val] = true
      true
    end

=begin
    Returns boolean indicating if set contains value
=end
    def includes?(val)
      set[val] == true
    end


=begin
    Removes a value from the set. Returns true if the set contained the specified element.
    :type val: Integer
    :rtype: Boolean
=end
    def remove(val)
      return false if !includes?(val)
      set.delete(val)
      true
    end


=begin
    Get a random element from the set.
    :rtype: Integer
=end
    def get_random()
      set.keys[rand(0...set.size)]
    end


end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()