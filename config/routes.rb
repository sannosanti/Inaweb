Rails.application.routes.draw do
  resources :documents
	root 'static_pages#index'
	resources :static_pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
