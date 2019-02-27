class Api::ProductsController < ApplicationController
  def one_product_method
    @movie = Product.first
    render "one_product.json.jbuilder"
  end
end
