Rails.application.routes.draw do
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  root "top#index"
  resources :users, only: %i(index show) do
    get 'likes',on: :member
    get 'got_likes',on: :member
    resources :comments,only: %i(create)
    resources :footprints,only: %i(index create)
      get 'visiters', on: :member
      get 'visited', on: :member
  end

  resources :reactions, only: %i(create)
  resources :matching, only: %i(index)
  resources :chat, only: %i(create show)

  resources :search, only: %i(index) do
    get 'result', on: :collection
  end

end
