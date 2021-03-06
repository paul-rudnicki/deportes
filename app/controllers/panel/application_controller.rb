class Panel::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
	before_action :authorize, :count_page_users

	layout 'panel'

	def current_user
		@user ||= User.find(session[:current_user_id]) if session[:current_user_id]
	end

	def authorize
		unless current_user # dopoki false
			redirect_to '/login', alert: 'Please login to view panel pages'
		end
	end

	def count_page_users
		@pages_count = Page.count
		@users_count = User.count
	end
end
