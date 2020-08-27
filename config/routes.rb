Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events, only: [:index, :create, :show, :new, :update] do
    resources :attendees, only: [:create]
  end
  resources :attendees, only: [:edit, :update]
  resources :users, only: [:show]
  get "/dashboard", to: "pages#dashboard"
end
