json.extract! product, :id, :product_id, :name, :description, :del_flag, :created_at, :updated_at
json.url product_url(product, format: :json)