Rails.application.routes.draw do
  devise_for :users
  resources :artists
  resources :songs

  root "artists#index"
end
