class Panel::SessionsController < Panel::ApplicationController
	before_action :authorize, except: [:new, :create]

	layout 'login', only: [:new, :create]

	def new
    redirect_to panel_users_path if session[:current_user_id]
  end

  def create
  	@user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if @user
  		session[:current_user_id] = @user.id
  		redirect_to panel_users_path, notice: 'Witaj na swoim koncie'
		else
			flash[:alert] = 'Nieprawidłowy email lub hasło'
			render :new
  	end
  end

  def destroy
	  session[:current_user_id] = nil
	  redirect_to '/login', notice: 'Poprawnie wylogowano'
  end
end
