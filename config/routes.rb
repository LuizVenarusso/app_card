Rails.application.routes.draw do
   root to: 'home#index'
  resources :users, only: [:index, :import] do
    collection { post :import }
  end
end
