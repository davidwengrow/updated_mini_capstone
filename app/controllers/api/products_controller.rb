class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jbuilder"
  end
  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
    @product = Product.new(name: params[:name], 
      price: params[:price],
       image_url:[:image_url],
        description:[:description])
    @product.save
    render "show.json.jbuilder"
  end
end

