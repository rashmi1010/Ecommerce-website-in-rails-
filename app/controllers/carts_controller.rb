class CartsController < ApplicationController
	 def index
    @carts = current_user.carts
  end

  def create
  	cart = current_user.carts.new(product_id: params[:id])
  	if cart.save
  		redirect_to carts_path
  	else
    	redirect_to customers_path
  	end
  end
  
	def show
	end
end
