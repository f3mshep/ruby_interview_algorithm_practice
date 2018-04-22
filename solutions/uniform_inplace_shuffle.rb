#Given an array, shuffle the array in place. The shuffle must be uniform!

def naive_shuffle(my_numbers)
  floor = 0
  ceil = my_numbers.size - 1
  count = 0
  while count < my_numbers.size
    current_number = my_numbers[count]
    random_index = get_random(floor, ceil)
    placeholder = my_numbers[random_index]
    my_numbers[count] = placeholder
    my_numbers[random_index] = current_number
    count += 1
  end
  my_numbers
end

def get_random(floor, ceil)
  rand(floor..ceil)
end

def get_random(floor, ceil)
  rand(floor..ceil)
end

def uniform_shuffle(my_numbers)
  results = []
  floor = 0
  while my_numbers.size > 0
    ceiling = my_numbers.size - 1
    results << my_numbers.delete_at(get_random(floor, ceiling))
  end
  results
end

def best_shuffle(my_numbers)
  count = 0
  my_size = my_numbers.size
  while count < my_size
    random_index = (get_random(count, my_size - 1))
    my_numbers[random_index], my_numbers[count] = my_numbers[count], my_numbers[random_index]
    count += 1
  end
  my_numbers
end

# Speed: O(n)