json.array! @products.each do |product|
  json.id product.id
  json.name product.name
  json.price product.price
  json.image_url product.image_url
  json.description product.description
  json.friendly_updated_at product.friendly_updated_at
end

