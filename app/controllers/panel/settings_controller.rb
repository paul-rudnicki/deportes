class Panel::SettingsController < Panel::ApplicationController
  def new
  	if Setting.any?
  		redirect_to edit_panel_setting_path(Setting.first)
  	else
	  	@setting = Setting.new
  	end
  end

  def create
  	@setting = Setting.new(settings_params)
  	if @setting.save
	  	redirect_to edit_panel_setting_path(@setting), notice: 'Poprawnie zapisano ustawienia'
		else
			flash[:notice] = 'Nie udało się zapisać ustawień'
			render :new
  	end
  end

  def edit
  	@setting = Setting.find(params[:id])
  end

  def update
  	@setting = Setting.find(params[:id])
  	if @setting.update(settings_params)
  		redirect_to edit_panel_setting_path(@setting), notice: 'Poprawnie zaaktualizowano ustawienia'
  	else
  		flash[:alert] = 'Nie udało się zaktulizować ustawień'
  		render :edit
  	end
  end

  private

  def settings_params
  	params.require(:setting).permit(:id, :site_name, :posts_per_page, :under_maintenace, :image )
  end
end
