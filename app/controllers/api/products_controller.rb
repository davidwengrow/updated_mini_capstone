class Api::ProductsController < ApplicationController
  def one_product_method


    @products = Product.all
    render "one_product.json.jbuilder"
  end
end

