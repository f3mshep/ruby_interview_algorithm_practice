
#Given an array, return the highest possible product of multiplying 3 unique elements from the array. Each array will have at least 3 elements.

#Optimal Solution -  O(n)
def greedy_int(int_arr)
  highest = int_arr.first(2).max
  lowest = int_arr.first(2).min
  highest_product_2 = int_arr[0] * int_arr[1]
  lowest_product_2 = int_arr[0] * int_arr[1]
  highest_product_3 = highest_product_2 * int_arr[2]
  
  int_arr.each_with_index do |current_int,index|
    print "#{lowest_product_2}\n"
    next if index < 2
    highest_product_3 = current_int * highest_product_2 if current_int * highest_product_2 > highest_product_3
    highest_product_3 = current_int * lowest_product_2 if current_int * lowest_product_2 > highest_product_3
    highest_product_2 = current_int * highest if current_int * highest > highest_product_2
    highest_product_2 = current_int * lowest if current_int * lowest > highest_product_2
    lowest_product_2 = current_int * lowest if current_int * lowest < lowest_product_2
    lowest_product_2 = current_int * highest if current_int * highest < lowest_product_2
    highest = current_int if current_int > highest
    lowest = current_int if current_int < lowest
  end
  
  return highest_product_3
end

  array_of_ints = [1, 10, -5, 1, -100]

greedy_int(array_of_ints)
