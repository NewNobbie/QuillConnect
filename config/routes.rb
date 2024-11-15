Rails.application.routes.draw do
  devise_for :users
  
  resources :categories do
    resources :posts, only: [:index] # Posts filtered by category
  end

  resources :posts do
    resources :comments, only: [:create, :index, :destroy] # Comments on a post
  end
  

  # Defines the root path route ("/")
  # root "posts#index"
end
