# Implement a method #stock_picker that takes in an array of stock prices, 
# one for each hypothetical day. It should return a pair of days representing 
# the best day to buy and the best day to sell. Days start at 0.
# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(prices)
  prices.each_with_index do |numi, i|
    prices[i+1..-1].each do |numj|
      puts "#{numi}, #{numj}"
    end
  end
end

stock_prices = [17,3,6,9,15,8,6,1,10]

stock_picker(stock_prices)