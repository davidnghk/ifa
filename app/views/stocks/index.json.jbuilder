json.array!(@stocks) do |stock|
  json.extract! stock, :id, :ticker, :name, :last_price, :pricing_date, :roi, :risk, :sharpe, :alpha, :parent_id, :no_of_prices
  json.url stock_url(stock, format: :json)
end
