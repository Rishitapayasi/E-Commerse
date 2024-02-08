class ProductsController < ApplicationController
	before_action :current_user

	def index
	end

	def new
		@product = Product.new
	end

  def create
    @product = current_user.products.new(product_params)

    if @product.save
      redirect_to products_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def product_params
  	byebug
    params.require(:product).permit(:name, :description, :quantity, :category_id)
  end

 
	
end
