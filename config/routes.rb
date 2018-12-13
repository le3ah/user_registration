Rails.application.routes.draw do
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
