def stock_picker(stocks)
  buy = sell = max_profit = cur_profit = 0
  max_index = []
  stocks.each_index do |i|
    if stocks[i] <= stocks[buy]
      buy = sell = i
      cur_profit = 0
    elsif stocks[i] > stocks[sell]
      sell = i
      cur_profit = stocks[sell] - stocks[buy]
    end
    if cur_profit > max_profit
      max_profit = cur_profit
      max_index = [buy, sell]
    end
  end
  max_index
end