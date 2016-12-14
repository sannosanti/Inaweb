Rails.application.routes.draw do
  resources :roles
  devise_for :users
  get 'static_pages/index'
  resources :documents do
  	collection do 
  		get :mostrar_categoria
  	end
  end
  resources :admin_users
	root 'static_pages#index'
	resources :static_pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
