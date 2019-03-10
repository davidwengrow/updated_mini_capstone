class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all

    # @suppliers = @products.order(:id => :asc)

    name_search = params["search"]
    if name_search
      @suppliers = @suppliers.where("name ILIKE ?", "%#{name_search}%")
    end

    # if params["discount"]
    #   @suppliers = @suppliers.where("price < ?", 10)
    # end
    
    # if params["sort_order"] == "asc" && params["sort"] == "price"
    #   @suppliers = @suppliers.order(:price => :asc)
    # elsif params["sort_order"] == "desc" && params["sort"] == "price"
    #   @suppliers = @suppliers.order(:price => :desc)
    # else
    #   @suppliers = @suppliers.order(:id => :asc)
        
    # end

    render "index.json.jbuilder"
  end
  def show
    @supplier = Supplier.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
    @supplier = Supplier.new(name: params[:name], 
      email: params[:email],
       phone_number: params[:phone_number])
        # description: params[:description],
        #   instock: params[:instock],
        #     supplier_id: params[:supplier_id])


    if @supplier.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number
    # @supplier.description = params[:description] || @supplier.description
    # @supplier.instock = params[:instock] || @supplier.instock
    # @supplier.supplier_id = params[:supplier_id] || @supplier.supplier_id

    if @supplier.save
      render "show.json.jbuilder"
    else
      render json: {errors: @supplier.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    render json: {message: "Suppllier Destroyed"} 
  end
end

