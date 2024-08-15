Rails.application.routes.draw do
  get 'products/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :products do
    resources :reviews, only: [:index]
  end


    # User routes
    # devise_scope :user do
    #   authenticated :user do
    #     root 'products#inex', as: :authenticated_root
    #   end
    #   unauthenticated do
    #     root 'pages#home', as: :unauthenticated_root
    #   end
    # end
end
