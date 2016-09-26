Rails.application.routes.draw do
	devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
	root 'index#index'
	authenticate :user do
		resources :tasks
		resources :items
		get 'dashboard', to: 'dashboard#index', :as => "dashboard"		
		post 'addwg', to: 'wgs#add'	, :as => "add_wg"			
		get 'leavewg', to: 'wgs#remove'	, :as => "leave_wg"		
	    resources :wgs, only: [:new, :create, :edit, :index, :show, :destroy]
	end
end
