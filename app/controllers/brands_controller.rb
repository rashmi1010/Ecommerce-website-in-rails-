class BrandsController < ApplicationController
	def index
		@brands = Brand.all
	end
  
  def new

  	@brand = Brand.new
  end
  def create 
  
  	@brand = Brand.new(name: params[:brand][:name])
  	@brand.save
    
    redirect_to brands_path

    
  end
   def show
   	@brand = Brand.find(params[:id])
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
 	@brand=Brand.find(params[:id])
	 	@brand.delete
	 	redirect_to brands_path
  end


end
