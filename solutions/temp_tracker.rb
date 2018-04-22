#Write a class that keeps track of temperatures. It should have a way to insert
#new temperatures, and retrieve the max, min, mean, and mode.
#optimize to get O(1) for all operations.

class TempTracker

  def initialize
    self.min = nil
    self.max = nil
    self.size = 0
    self.histo = Hash.new(0)
    self.mean = nil
  end

  def insert(temp)
    self[histo] += 1
    self.size += 1
    if self.min
      self.min = [temp, self.min].min
    else
      self.min = temp
    end
    if self.max
      self.max = [temp, self.max].max
    else
      self.max = temp
    end
    if self.mean
      sum = self.mean * (self.size - 1).to_f
      self.mean = sum / self.size
    else
      self.mean = temp.to_f
    end
    if self.mode
      self.mode = [self.histo[self.mode], self.histo[temp]].max
    else
      self.mode = temp
    end
    temp
  end

  def get_min
    self.min
  end

  def get_max
    self.max
  end

  def get_mean
    self.mean
  end

  def get_mode
    self.mode
  end

end