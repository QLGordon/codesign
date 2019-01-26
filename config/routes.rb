Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/logos', to: 'pages#logos'
  get '/affiches', to: 'pages#affiches'
  get '/motions', to: 'pages#motions'
  get 'projects/motions', to: 'projects#motions'
  get 'projects/ptpx', to: 'projects#ptpx'
  get 'projects/vecteurs', to: 'projects#vecteurs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
