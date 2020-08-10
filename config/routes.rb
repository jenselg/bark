Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews
  end
  
  devise_for :users

  authenticated :user do
    root 'private_pages#index', as: :auth_root
  end

  root 'public_pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
