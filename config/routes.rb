Rails.application.routes.draw do
  root to: 'twtexts#top'
  get '/twtexts', to: 'twtexts#index'
  resources :twtexts do
    collection do
      post :confirm
    end
  end
end
