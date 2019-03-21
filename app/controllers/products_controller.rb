class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    @products = Product.all
    @users = User.all
    render "new.html.erb"
  end
  def create
    @product = Product.new(name: params[:name], 
      price: params[:price],
       # image_url: params[:image_url],
        description: params[:description],
          instock: params[:instock],
            supplier_id: params[:supplier_id], 
              user_id: params[:user_id])
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.instock = params[:instock]
    @product.save
    redirect_to "/products"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end
  def edit
    @users = User.all
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to "/products"
  end
    
end
