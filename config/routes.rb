Rails.application.routes.draw do

  root to: 'pages#home'

  get 'pages/home'
  get 'pages/about_us'
  get 'pages/contact'
  get '/przeciwpozarowe' => 'pages#przeciwpozarowe'
  get '/segmentowe' => 'pages#segmentowe'
  get '/przemyslowe' => 'pages#przemyslowe'
  get '/uchylne' => 'pages#uchylne'
  get '/roletowa' => 'pages#roletowa'
  get '/kontakt' => 'pages#contact', as: :kontakt
  get '/o-nas' => 'pages#about_us', as: :o_nas

	namespace :panel do
    resources :settings, only: [:new, :create, :edit, :update]
    resources :pages
		resources :users, only: [:index]
    resources :sessions, only: [:new, :create, :destroy]
	end

  get '/login' => 'panel/sessions#new'
  get '/logout' => 'panel/sessions#destroy'

end
