Rails.application.routes.draw do
  resources :realizados
  resources :tareas
  devise_for :users
  resources :arealizars
  resources :tareas 
  get 'home/index'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
