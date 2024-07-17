# BEST_PRICE = SELL_PRICE - BUY_PRICE
# Step 1:
  # Get input array of stock prices from user
def stock_picker(prices)
# Step 2:
  # Create variable to hold current best price to buy
# Step 3:
  # Create variable to hold current best price to sell
# Step 3: 
  # Loop through array
  best_prices_hash = Hash.new(0)
  prices.each_with_index do |buy_price, index_1|
    prices.each_with_index do |sell_price, index_2|
      profit = sell_price - buy_price
      index_2 > index_1 ? best_prices_hash[[index_1, index_2]] = profit : nil
    end
  end
  most_profit_key_value_pair = best_prices_hash.select {|index, value| value == best_prices_hash.values.max}
  return most_profit_key_value_pair.keys[0]
end
  
# Step 4:
  # While in loop
# Step 4a:
  # Compare current value of variable to current index of array for highest sell price
# Step 4aa:
  # If current index value is higher, assign index value to variable,
# Step 4ab:
  # Otherwise continue
# Step 4b:
  # Compare current value of variable to current index of array for lowest buy price
# Step 4ba:
  # If current index value is lower, assign index value to variable
# Step 4bb:
  # Otherwise continue

# Step 5:
  # Implement functionality so sell can only be after buy

# Step 5a:
  # Best price formula = sell_price - buy_price

# Step 6:
  # Return buy_price, sell_price in new array
  # return [buy_price, sell_price]


p stock_picker([17,3,6,9,15,8,6,1,10])