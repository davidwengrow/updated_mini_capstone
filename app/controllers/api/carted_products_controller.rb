class Api::CartedProductsController < ApplicationController
  # before_action :authenticate_user

  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted",
    )

    
  
    if @cartedproducts.save
      render "show.json.jbuilder"
    else
      render json: {errors: @cartedproduct.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def index
    @cartedproducts = current_user.carted_products.where(status: 'carted')  
    
    render "index.json.jbuilder"
  end
  def destroy
    @carted_product = current_user.carted_products.find_by(id: params[:id])
    @carted_product.status = "removed"
    @carted_product.save
    render json: {message: "Carted product successfully removed!"}
  end
end

