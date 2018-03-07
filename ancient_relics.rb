# You are the world's best cat burgalar. You have just broken into the World's Most Secure Museum (tm)
# You have a duffel bag that can carry a certain weight, and you must figure out the most cost efficient
# way to pack your duffel. Each ancient artifact you can steal has a certain value and weight!
# Please note, some of these artificats way LITERALLY nothing! Have fun

# (You will be presented with a 2d array, first element is the weight, second is the value. The other argument is 
# the weight capacity of you duffel.)

def calculate_value(lb, value)
  return value if lb == 0
  value / lb
end

def max_value(cakes, capacity)
  value_arr = []
  total_value = 0
  total_lb = 0
  # calculate value per lb
  cakes.each do |cake|
    value = calculate_value(cake.first, cake.last)
    value_arr.push([value, cake.last ,cake.first])
  end

  # sort value_arr by the price per volume in descending order
  value_arr = value_arr.sort_by{|cake| -cake.first}

  # proceed through each cake in values array. Stick cake into duffel if it fits,
  # move on to next cake if it doesn't
  value_arr.each do |cake|
    lb = cake.last
    value = cake[1]
    next if value <= 0
    if lb == 0 && value > 0
      return Float::INFINITY
    elsif lb <= capacity
      amount = capacity / lb
      capacity -= amount * lb
      total_value += amount * value
    end
  end

  total_value
end
