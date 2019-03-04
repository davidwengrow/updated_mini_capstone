class Api::ProductsController < ApplicationController
  def one_product_method
    @products = Product.all
    render "one_product.json.jbuilder"
  end
  def search_products_method
    product_id = params["id"]
    @products = Product.find_by(id: product_id)
    render "search_products.json.jbuilder"
  end
end

