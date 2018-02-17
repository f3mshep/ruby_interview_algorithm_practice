function stock_seller(stock_list){
  max_profit = stock_list[1] - stock_list[0]
  min_price = stock_list[0]

  for(let time = 1; time < stock_list.length; time++){
    current_price = stock_list[time]
    difference = current_price - min_price
    if(difference > max_profit){
      max_profit = difference
    }
    if(current_price < min_price){
      min_price = current_price
    }
  }

  return max_profit
}

stock_prices = [10, 8, 7, 3, 1]

stock_seller(stock_prices)