json.array!(@brands.visible) do |brand|
  json.extract! brand, :id, :name, :position, :visible, :permalink, :counter, :description
  json.icon brand.icon.url(:thumb)
  json.url brand_url(brand, format: :json)
end
