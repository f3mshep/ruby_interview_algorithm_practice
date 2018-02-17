def get_products_except_index(int_array)
  product_before_index = get_products_before_index(int_array)
  
  product_after_index = get_products_after_index(int_array)
  
  return product_before_index.collect.with_index {|product_before, index| product_before * product_after_index[index]  }
end

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

def get_products_after_index(int_array)
  product_so_far = 1
  all_products_after = []
  index =  int_array.length - 1
  
  while index >= 0
    all_products_after[index] = product_so_far
    product_so_far *= int_array[index]
    index -= 1
  end
  all_products_after
end



def efficient_products(int_array)
  return [] in int_array.length == 1
  results = []
  products_before_index = get_products_before_index(int_array)
  product_so_far = 1
  index = int_array.length - 1
  while index >= 0
    results[index] = product_so_far * products_before_index[index]
    product_so_far *= int_array[index]
    index -= 1
  end
  results
end

get_products_after_index([1,2,6,5,9])
efficient_products([1,2,6,5,9])
