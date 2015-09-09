def stock_picker(stock_prices)
  
  i = 0
  best_buy_price = 0
  best_sell_price = 0
  profit = 0
  
  while i < stock_prices.length
    low_stock_price = stock_prices[i]
  
  j = i + 1
  while j < stock_prices.length
    high_stock_price = stock_prices[j]
    
    diff = high_stock_price - low_stock_price
    if diff > profit
      profit = diff
      best_buy_price = i
      best_sell_price = j
    else
      j += 1
    end
  end
    
  i += 1
  end
  [best_buy_price, best_sell_price]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([19,14,6,9,15,45,6,1,23])