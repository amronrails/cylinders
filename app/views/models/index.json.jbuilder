json.array!(@models) do |model|
  json.extract! model, :id, :brand_id, :name, :visible, :permalink, :counter, :description, :position, :year, :avatar
  json.url model_url(model, format: :json)
end
