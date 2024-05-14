Rails.application.routes.draw do

  # this creates /optimizer
  get 'optimizer', to: 'pages#optimizer'
  get 'optimizer/results', to: 'pages#outcome', as: 'optimizer_results'

  post 'optimizer/results', to: 'pages#submit', as: 'submit_data'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
