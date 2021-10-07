class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!


	def new
		super
	end
		 
	def create 
		super
	 	if @user.role == "admin"
	 		Admin.create(email: @user.email)
	 		
	 	elsif @user.role == "customer"
	 		Customer.create(email: @user.email)
	 	end
	end

	protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation,:role])
	end
		

		# def after_sign_in_path_for(resource) 
		# 	debugger
		#   stored_location_for(resource) ||
		#     if resource.is_a?(User) && resource.can_publish?
		#       publisher_url
		#     else
		#       super
		#     end
		# end


	def after_sign_in_path_for(current_user)

		if (current_user.role == "customer")
			customers_path
		else
			admins_path
		end
	end

end
