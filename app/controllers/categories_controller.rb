class CategoriesController < ApplicationController
	def index

		
    @categories = Category.all
  
  	end
  def new

  	@category = Category.new

  end
  def create 
  
  	@category = Category.new(name: params[:category][:name])
  	@category.save
    
    redirect_to categories_path
  end
   def show
   	@category = Category.find(params[:id])
   end
 #  def edit
		
	# @patient = Patient.find(params[:id])
 # end
	#  def update 
	# 	@patient =Patient.find(params[:id])
	# 	@patient.update(name: params[:product][:name], cost:params[:product][:cost])
	# 	redirect_to root_path
 #  end
  def destroy
  	
 	@category = Category.find(params[:id])
	 	@category.delete
	 	redirect_to categories_path
	 	 
   end
  


end
