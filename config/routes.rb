Rails.application.routes.draw do

  root "static_pages#home"
  get "/signin", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"

  get "/users/:id/delete", to: "users#delete"
  get "/employees/:id/delete", to: "employees#delete"
  get "/issues/:id/delete", to: "issues#delete"

  resources :users
  
  resources :users do
    resources :issues, only: [:index, :new, :edit]
  end

  resources :issues
  resources :employees

  get '/auth/github/callback', to: 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
