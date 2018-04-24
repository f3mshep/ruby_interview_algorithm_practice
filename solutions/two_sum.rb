#speed complexity O(n^2)
#space complexity O(1)

def naive_two_sum(nums, target)
  nums.each_with_index do |num_i,index_i|
    counterpart = target - num_i
    nums.each_with_index do |num_j, index_j|
      next if index_i == index_j
      return [index_i,index_j] if num_j == counterpart
    end
  end
  []
end

#speed complexity O(n)
#space complexity O(n)

def two_sum(nums, target)
  histo = {}
  nums.each_with_index do |num, index|
    counterpart = target - num
    if histo[counterpart] && histo[counterpart] != index
      return [index, histo[counterpart]]
    end
    histo[num] = index
  end
  []
end