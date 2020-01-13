Rails.application.routes.draw do
  devise_for :users
  root "top#index"
  resources :users, only: %i(index show) do
    get 'likes',on: :member
    get 'got_likes',on: :member
  end

  resources :reactions, only: %i(create)
  resources :matching, only: %i(index)
  resources :chat, only: %i(create show)
end
