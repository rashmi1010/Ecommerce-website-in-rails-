class CartsController < ApplicationController
	 def index
  
    @carts = Cart.all
		@products = Product.all
  end
  
def show

		@product = Product.find(params[:id])
end
end
