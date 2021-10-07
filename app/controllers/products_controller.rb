class ProductsController < ApplicationController
	
def index

 

  if params[:search].present? && params[:store].present?
   
   #@products = Product.where('name LIKE ?  ', "%#{params[:search]}%").includes(:category)
  	@category = Category.where('name LIKE ?  ', "%#{params[:store]}%")

     @category.each do |category|

     @products= category.products.where('name LIKE ?  ', "%#{params[:search]}%")
     
     end
    #@products = Product.where('name LIKE ?  ', "%#{params[:search]}%") 
  elsif params[:store].present? 
    
 
    @category = Category.where('name LIKE ?  ', "%#{params[:store]}%")
    @category.each do |category|
    @products = category.products
   end
  elsif params[:search].present?
    @products = Product.where('name LIKE ?  ', "%#{params[:search]}%") 
      
    
  else
    @products = Product.all
  end

  
end

  def cat
    @category = Category.find(params[:category])
    @subcat = @category.brands.uniq
    render json: @subcat
    # respond_to do |format|
    #   # format.json {
    #   #     render json: {status: "success",id: params[:index]}
    #   # }
    #    render json: {status: "success" , subcat: @subcat}
    # end


    # format do |format|
    #   format.js 
    # end
  end
  
  def new
    @product = Product.new
  end

    

  def create

#     def create_ajax_form_friend
# @rohit = "Hello Rohit!!!"
# @friend = Friend.create!(first_name: params[:first_name], user_id: current_user.id)
# respond_to :js
# end

     @category = Category.find(params[:product][:category_id])
	   #@patient=  Patient.find(params[:appointment][:patient_id])
	   @products = @category.products.create(name: params[:product][:name],brand_id: params[:product][:brand_id],image: params[:product][:image],price: params[:product][:price],quantity:params[:product][:quantity]  )
       

	   redirect_to products_path
  end
  
   def show
   
   	@product = Product.find(params[:id])
   end
  def edit
		

	 @product = Product.find(params[:id])
  
  end  
	 def update 
   
		@product =Product.find(params[:id])
		@product.update(name: params[:product][:name],brand_id: params[:product][:brand_id],image: params[:product][:image] ,price: params[:product][:price],quantity:params[:product][:quantity] )
		redirect_to products_path
   end
  def destroy
 	  @product = Product.find(params[:id])
	 	@product.delete
	 	redirect_to products_path
  end
  # def add_to_cart
  #   cart = current_user.carts.new
  #   cart.product_id = params[:id]
  #   cart.save
  #   # redirect_to products_path
  # end
  # def remove_from_cart
  #   cart = current_user.carts.where(product_id: params[:id]).first
  #   cart.destroy
  #   # redirect_to products_path
  # end

  def electric
    @product = Product.new
  end
  def seasonal
    @product = Product.new
  end
  def kitchen
    @product = Product.new
  end
  def television
    @product = Product.new
  end
end
