Rails.application.routes.draw do
  resources :bikes do
    get 'bikes/manage', to: 'bikes#manage'
  end

  get '/profil', to: 'users#profil'
  root to: 'bikes#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
