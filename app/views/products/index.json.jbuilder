json.array!(@products) do |product|
  json.extract! product, :id, :name, :image, :size, :price, :status, :category_id
  json.url product_url(product, format: :json)
end
