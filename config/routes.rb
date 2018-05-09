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

  resources :favorites, only: [:create, :destroy]

  resources :contacts, only: [:new, :create]
  get '/contacts', to: 'contacts#new'
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end


end
