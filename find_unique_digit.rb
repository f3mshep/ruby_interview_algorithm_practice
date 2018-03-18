# Given an array of positive integers, find the single unique integer.

# not optimized for space
def unoptimized_find_unique_integer(id_array)
  histogram = Hash.new(0)
  id_array.each do |id|
    histogram[id] += 1
  end
  histogram.keys.each do |key|
    return key if histogram[key] == 1
  end
  return nil
end

#Optimized for space and time complexity

def find_unique_integer(id_array)
  unique_id = 0 
  id_array.each do |id|
    unique_id ^= id
  end

  return unique_id
end

##Bitwise Protip##

# A rule of thumb: If you want to cancel out elements, you can 
# use the bitwise operator

# If you want to multiply or divide by 2, you will want to use
# left or right shifts, respectively.