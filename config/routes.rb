Rails.application.routes.draw do
  resources :anamneses
  resources :treino_exercicios
  resources :treinos do
    member do
      get :concluir_treino_do_dia
    end
  end
  resources :exercicios
  get 'sessions/new'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  get 'sign_out'  => 'sessions#destroy'
  root 'sessions#new'

  resources :usuarios
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
