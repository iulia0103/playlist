Rails.application.routes.draw do
  devise_for :users

  resources :artists do
    resources :songs
  end

  get 'user_songs/:user_id' => 'songs#user', as: :user_songs

  root "artists#index"
end
