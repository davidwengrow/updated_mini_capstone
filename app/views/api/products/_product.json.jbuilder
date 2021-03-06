json.id product.id
json.name product.name
json.price product.price
# json.image_url product.image_url
json.images product.images
json.description product.description

json.is_discounted product.is_discounted?
json.tax product.tax
json.total product.total

json.supplier product.supplier
# json.supplier do
#   json.id product.supplier.id
#   json.name product.supplier.name
# end

json.categories product.categories

json.formatted_price number_to_currency(product.price)
json.formatted_tax number_to_currency(product.tax)
json.formatted_total number_to_currency(product.total)
json.primary_image product.primary_image