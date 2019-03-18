Rails.application.routes.draw do
  devise_for :users
  root to: 'projects#index'
  get '/about', to: 'pages#about'

  resources :projects do
    resources :works
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
