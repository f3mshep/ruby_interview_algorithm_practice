# Write a method that takes an array and returns all its
# permutations. Time/memory complexity should be proportional to the
# number of permutations; what is this?

# Example:

# permutations([1,2,3])
# => [[1, 2, 3], [2, 1, 3], [2, 3, 1], [1, 3, 2], [3, 1, 2], [3, 2, 1]]


def array_permutations(arr)
  return [arr] if arr.length <= 1
  removed = arr.last
  sliced_arr = arr.slice(0...-1)
  new_arrays = array_permutations(sliced_arr)
  res = []
  new_arrays.each{|new_array|res +=  insert_num(new_array, removed)}
  res
end

def insert_num(arr, num)
  new_arrays = []
  (arr.length + 1).times do |index|
    dup = arr.dup
    new_arrays << dup.insert(index, num)
  end
  new_arrays
end