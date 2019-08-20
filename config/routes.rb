Rails.application.routes.draw do
  get 'bikes/search'
  get 'bikes/index'
  get 'bikes/show'
  get 'bikes/new'
  get 'bikes/create'
  get 'bikes/manage'
  get 'bikes/edit'
  get 'bikes/update'
  get 'bikes/destroy'
  get '/profil', to: 'users#profil'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
