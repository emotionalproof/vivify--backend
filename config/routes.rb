Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :mornings
    end
  end
  namespace :api do
    namespace :v1 do
      resources :games
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users, except: [:show, :destroy]
      get 'users/:username', to: 'users#show', as: 'user_signin'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
