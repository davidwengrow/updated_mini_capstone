class Api::ProductsController < ApplicationController
  before_action :authenticate_user
  
  

  def index
    if current_user
      @products = Product.all

      @products = @products.order(:id => :asc)

      name_search = params["search"]
      if name_search
        @products = @products.where("name ILIKE ?", "%#{name_search}%")
      end

      if params["discount"]
        @products = @products.where("price < ?", 10)
      end
      
      if params["sort_order"] == "asc" && params["sort"] == "price"
        @products = @products.order(:price => :asc)
      elsif params["sort_order"] == "desc" && params["sort"] == "price"
        @products = @products.order(:price => :desc)
      else
        @products = @products.order(:id => :asc)
          
      end

      render "index.json.jbuilder"
    else 
      render json: []
    end
  end
  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
    @product = Product.new(name: params[:name], 
      price: params[:price],
       # image_url: params[:image_url],
        description: params[:description],
          instock: params[:instock],
            supplier_id: params[:supplier_id], 
              user_id: current_user.id)




    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    # @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.instock = params[:instock] || @product.instock
    @product.supplier_id = params[:supplier_id] || @product.supplier_id


    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product Destroyed"} 
  end
end

