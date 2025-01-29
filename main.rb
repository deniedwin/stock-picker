# Implement a method #stock_picker that takes in an array of stock prices, 
# one for each hypothetical day. It should return a pair of days representing 
# the best day to buy and the best day to sell. Days start at 0.
# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

# a more elegant solution:
# def stock_picker(prices)
#   min_price = prices.first
#   min_day = 0
#   max_profit = 0
#   best_days = []

#   prices.each_with_index do |price, day|
#     if price < min_price
#       min_price = price
#       min_day = day
#     elsif price - min_price > max_profit
#       max_profit = price - min_price
#       best_days = [min_day, day]
#     end
#   end
#   best_days
# end

def stock_picker(prices)
  difmax = 0    #variable to store max profit
  best_days = []    #variable to store best days to buy and sell
  prices.each_with_index do |numi, i|   #iterate thru all prices
    prices[i+1..-1].each_with_index do |numj, j|    #keep track of new sliced array
      dif = numj - numi   #variable to store current dif (profit)
      if dif > difmax
        difmax = dif
        best_days = [i, i+1+j]
      end
    end
  end
  puts "max profit is: #{difmax}, best day: #{best_days}"
end

stock_prices = [17,3,6,9,15,8,6,1,10]

stock_picker(stock_prices)