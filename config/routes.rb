Rails.application.routes.draw do
  resources :bikes do
    member do
      get 'manage'
    end
    resources :reservations, only: [:show, :new, :create]
  end

  get '/profil', to: 'users#profil'
  root to: 'bikes#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
