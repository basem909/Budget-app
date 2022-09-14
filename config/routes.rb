Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splash#index"
  # root "categories#index" if current_user
  resources :users, only: [:index] do
    resources :categories, only: [:index, :new, :create, :destroy, :show] do 
      resources :entities, only: [ :new, :create, :destroy]
    end
  end 
end
