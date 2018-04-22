# README:

# You are a stock broker! You are presented with a magical machine that will calculate the stock price of Zoodles Inc
# every minute. 

# It looks a little something like this:
# [10,7,12,8,2,1]

# Write a method that will tell you the max profit you can make with this juicy insider info!
# You can only do one thing at a time - no buying and then immediately selling! No shorting!

def stock_seller(stock_list)
  # setting up. We initialize max_profit to be the very first transaction we can make
  # this way, we can make a decision if we have to sell at a loss
  max_profit = stock_list[1] - stock_list[0]
  min_price = stock_list.first
  
  stock_list.each_with_index do |current_price, time|
      # skip the possiblity of doing anything else on the first day
      # no buying and selling on the same day!
      next if time == 0
      difference = current_price - min_price
      if difference > max_profit
          negative_profit = false
          max_profit = difference
      end
      #it is important to set min price here, otherwise we can just sell to ourselves if
      #we are in the negative,
      if current_price < min_price
        min_price = current_price
      end
  end
  
max_profit
end


stock_prices_yesterday = [10, 9, 7, 6, 5]

stock_seller(stock_prices_yesterday)

# Complexity is O(n) - Simply the size of the array
# Why? We need to iterate through the whole array once,
# therefore it will take us at least the size of the array
# to complete the algorithm

# How did we solve this?
# Using a greedy technique, which is a family of algorithms
# greed isn't always good, but in this particular scenario it worked out well for us