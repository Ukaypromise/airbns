json.extract! product, :id, :brand, :model, :description, :condition, :category, :name, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
