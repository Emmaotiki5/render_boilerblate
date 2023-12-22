Rails.application.routes.draw do
  resources :friends
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  root 'pay_job#index'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pay_job#contact'
  get '/home', to: 'pages#home'
end
