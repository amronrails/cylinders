json.array!(@brands.visible) do |brand|
  json.extract! brand, :id, :name, :position, :visible, :permalink, :counter, :description, :icon
  json.url brand_url(brand, format: :json)
end
