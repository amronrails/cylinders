json.array!(@cars) do |car|
  json.extract! car, :id, :model_id, :name, :visible, :permalink, :counter, :description, :position, :year, :image
  json.url car_url(car, format: :json)
end
