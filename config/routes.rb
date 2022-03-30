Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
   
   get '/search', to: 'profiles#search'
  # get 'profiles/index'
    root "profiles#index"
    resources :profiles
     
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
