class Api::OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end

  # def index
  #   if current_user
  #     @orders = Order.all

  #     @orders = @orders.order(:id => :asc)

  #     product_id = params["product_id"]
  #     if name_search
  #       @orders = @orders.where("name ILIKE ?", "%#{name_search}%")
  #     end

  #     if params["discount"]
  #       @orders = @orders.where("price < ?", 10)
  #     end
      
  #     if params["sort_order"] == "asc" && params["sort"] == "price"
  #       @products = @products.order(:price => :asc)
  #     elsif params["sort_order"] == "desc" && params["sort"] == "price"
  #       @products = @products.order(:price => :desc)
  #     else
  #       @products = @products.order(:id => :asc)
          
  #     end

  #     render "index.json.jbuilder"
  #   else 
  #     render json: []
  #   end
  # end
  # def show
  #   @product = Product.find_by(id: params[:id])
  #   render "show.json.jbuilder"
  # end
  def create
    product = Product.find_by(id: params[:product_id])

    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(product_id: params[:product_id], 
            # supplier_id: params[:supplier_id], 
              quantity: params[:quantity],
                user_id: current_user.id, 
                subtotal: calculated_subtotal,
                tax: calculated_tax,
                total: calculated_total)





    if @order.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

#   def update
#     @product = Product.find_by(id: params[:id])
#     @product.name = params[:name] || @product.name
#     @product.price = params[:price] || @product.price
#     # @product.image_url = params[:image_url] || @product.image_url
#     @product.description = params[:description] || @product.description
#     @product.instock = params[:instock] || @product.instock
#     @product.supplier_id = params[:supplier_id] || @product.supplier_id


#     if @product.save
#       render "show.json.jbuilder"
#     else
#       render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
#     end
#   end
#   def destroy
#     @product = Product.find_by(id: params[:id])
#     @product.destroy
#     render json: {message: "Product Destroyed"} 
#   end
# end

end
