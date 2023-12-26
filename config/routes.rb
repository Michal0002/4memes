Rails.application.routes.draw do
  devise_for :users
  resources :memes
  root "memes#index"
end
