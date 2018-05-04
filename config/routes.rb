Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'twtexts#top'
  get '/twtexts', to: 'twtexts#index'
  resources :twtexts do
    collection do
      post :confirm
    end
  end

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]
  
end
