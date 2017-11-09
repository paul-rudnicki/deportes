class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :fetch_settings

  def fetch_settings
  	@setting = Setting.first
  end
  
end
