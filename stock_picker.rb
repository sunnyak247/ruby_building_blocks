def stock_picker(stock_prices)
  
  i = 0
  lowest = 0
  highest = 0
  profit = 0
  
  while i < stock_prices.length
    low_stock_price = stock_prices[i]
  
  j = i + 1
  while j < stock_prices.length
    high_stock_price = stock_prices[j]
    
    diff = high_stock_price - low_stock_price
    if diff > profit
      profit = diff
      lowest = low_stock_price
      highest = high_stock_price
    else
      j += 1
    end
  end
    
  i += 1
  end
  [lowest, highest]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([19,14,6,9,15,45,6,1,23])