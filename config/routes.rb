Rails.application.routes.draw do
  resources :comments
  resources :notices do
    resources :comments, only: [:create]
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    root "notices#index"
end
