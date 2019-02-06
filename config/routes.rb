Rails.application.routes.draw do
  devise_for :users
  root to: 'projects#index'
  # get '/logos', to: 'pages#logos'
  # get '/affiches', to: 'pages#affiches'
  # get '/motions', to: 'pages#motions'
  get '/about', to: 'projects#about'

  resources :projects do
    resources :colors, only: [ :new, :create ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
