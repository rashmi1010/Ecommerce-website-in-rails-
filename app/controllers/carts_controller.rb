class CartsController < ApplicationController
	 def index
    # @products = current_user.carts.map(&:product)
    # @order = Order.all
    @carts = Cart.all
		@products = Product.all
  end
  # def new
  #  @cart =Cart.new

  # end
  # def create
  # 	 @cart = Cart.find(params[:cart][:cart_id])
	 #   #@patient=  Patient.find(params[:appointment][:patient_id])
	   
  # end
def show

		@product = Product.find(params[:id])
end
end
