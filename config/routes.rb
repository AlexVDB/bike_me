Rails.application.routes.draw do
  resources :bikes do
    get '/manage', to: 'bikes#manage'

    resources :reservations, only: [:show, :new, :create]
  end

  get '/profil', to: 'users#profil'
  root to: 'bikes#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
