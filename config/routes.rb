Rails.application.routes.draw do
  root to: 'twtexts#index'
  get '/twtexts', to: 'twtexts#index'
  resources :twtexts do
    collection do
      post :confirm
    end
  end
end
