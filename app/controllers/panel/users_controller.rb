class Panel::UsersController < Panel::ApplicationController
	def index
		if params[:search].present?
			@users = User.matching_fullname(params[:search]).page(params[:page]).per(2)
		else 
			@users = User.all.page(params[:page]).per(2)
		end
	end
end