Rails.application.routes.draw do
  get 'sessions/new'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  root 'sessions#new'

  resources :usuarios
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
