class Api::ProductsController < ApplicationController
  def one_product_method

    Product.each do
      
      @products = Product.all
    
    end
    render "one_product.json.jbuilder"
  end
end
