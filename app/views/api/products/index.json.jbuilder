json.array! @products.each do |product|
  json.partial! "product.json.jbuilder", product: product 
  # json.id product.id
  # json.name product.name
  # json.price product.price
  # json.image_url product.image_url
  # json.description product.description
  # json.friendly_updated_at product.friendly_updated_at
  # json.discount product.is_discounted
  # json.tax product.tax
  # json.total product.total
end

