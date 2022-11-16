Rails.application.routes.draw do
  get 'reviews/new'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
