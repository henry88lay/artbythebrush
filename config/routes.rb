Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :artworks
  resources :galleries

  get "artists/:id", to: 'pages#profile'
  resources :users, only: [] do
    resources :follows, only: [:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
