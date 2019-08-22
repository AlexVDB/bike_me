Rails.application.routes.draw do
  devise_for :users
  resources :bikes do
    member do
      get 'manage'
    end
    resources :reservations, only: [:create]
  end

  resources :reservations, only: [:show]
  resources :users, only: [:show]
  root to: 'bikes#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

