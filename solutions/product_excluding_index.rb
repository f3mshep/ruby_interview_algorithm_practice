# Brute Force Solution - O(n^2)
def get_products_no_index(int_arr)
  results = []
  int_arr.each_with_index do |int_a, index_a|
    product = 1
    int_arr.each_with_index do |int_b, index_b|
      next if index_b == index_a
      product *= int_b
    end
    results.push(product)
  end
  results
end


# Most effcient solution - O(n)
# Greedy approach

def get_products_before_index(int_array)
  product_so_far = 1
  all_products_before = []
  for index in (0...int_array.length)
    #product before the first element in array is 1
    #therefore we don't want to calculate the produce
    #until we have pushed the product into the array
    all_products_before[index] = product_so_far
    product_so_far *= int_array[index]
  end
  all_products_before
end

def efficient_products_no_index(int_array)
  return [] if int_array.length == 1
  # anticipates edge case of array of length 1
  results = []
  products_before_index = get_products_before_index(int_array)
  # get array of products before index, push them into an array
  product_so_far = 1
  index = int_array.length - 1
  while index >= 0
    # iterate through product array backwards to calculate
    # the products except for the index
    results[index] = product_so_far * products_before_index[index]
    product_so_far *= int_array[index]
    index -= 1
  end
  results
end

