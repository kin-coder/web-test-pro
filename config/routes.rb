Rails.application.routes.draw do

  root 'home#index'

  get '/dashboard', to: 'membre#index', as: 'dashboard'
  get  '/profile',to: 'membre#profile'

  devise_for :clients
  devise_scope :client do
    get '/clients/sign_out'=> 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
