json.id product.id
json.name product.name
json.price product.price
json.formatted_price number_to_currency(product.price)
# json.image_url product.image_url
json.description product.description
json.friendly_updated_at product.friendly_updated_at
json.discount product.is_discounted
json.formatted_tax number_to_currency(product.tax)
json.formatted_total number_to_currency(product.total)
json.instock product.instock
json.supplier_id  product.supplier
json.images product.images
json.