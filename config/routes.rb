Rails.application.routes.draw do
  get 'reviews/index'
  devise_for :users
  resources :ramen_shops, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
  end
  root 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
