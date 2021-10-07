class CustomersController < ApplicationController
	def index
		@customer =Customer.all
		@products = Product.all
	end
	def new
		
	@customer =Customer.new

	end
	def create


		@customer =Customer.new(email: params[:user][:email])
  	@customer.save
    
    redirect_to customers_path(@customer)
	end

	def create_customer
	 # debugger
		# @customer = User.find(params[:student_id])
  #   # @student.s_class = params[]
  #   # @student.save
		#  @profile = Customer.new(s_class: params[:class],subject: params[:subject], user_id: params[:student_id])
		#  if @profile.save 
		#  	redirect_to addstudent_path
		#  end
	end
	def show
		
	end
	
end
