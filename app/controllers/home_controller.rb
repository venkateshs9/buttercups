class HomeController < ApplicationController

	skip_before_action :authenticate_user!, only: [:index]

	def dashboard
		if current_user.user_type == "admin"
			@products = Product.all
			render 'admin_dashboard'
		else
			@products = Product.all
			render 'user_dashboard'
		end
	end

	def index
		@products = Product.all
	end

end
