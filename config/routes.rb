Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/logos', to: 'pages#logos'
  get '/affiches', to: 'pages#affiches'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
