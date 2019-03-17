Rails.application.routes.draw do
  devise_for :users
  root to: 'projects#index'
  get '/about', to: 'pages#about'

  resources :projects do
    resources :works, only: [ :index, :new, :create, :edit, :upadte ]
  end
  resources :works, only: [ :show, :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
