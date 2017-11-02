Rails.application.routes.draw do

	namespace :panel do
		resources :users, only: [:index]
    resources :sessions, only: [:new, :create, :destroy]
	end

  get '/login' => 'panel/sessions#new'
  get '/logout' => 'panel/sessions#destroy'

end
