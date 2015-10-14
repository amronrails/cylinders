json.array!(@car_prices) do |car_price|
  json.extract! car_price, :id
  json.url car_price_url(car_price, format: :json)
end
