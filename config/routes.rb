Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to: "todo_lists#index"

  resources :tags
  resources :todo_items
  resources :todo_lists do
  	resources :todo_items, only: [:create, :destroy, :mark_complete]
  end
  resources :accounts
  resources :users

  resources :sessions, only: [:create, :destroy, :new]

  get '/login' => "sessions#new", as: "login"
  delete '/logout' => "sessions#destroy", as: "logout"
  post '/todo_items/:todo_item_id' => "todo_items#mark_complete"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
