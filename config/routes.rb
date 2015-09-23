Rails.application.routes.draw do
  # devise_for :users
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  devise_for :users, controllers: { registrations: "registrations" }

  authenticated :user do
    root to: "plantings#index", as: :authenticated_root
  end

  root to: "static_pages#index"

  resources :accounts
  resources :crops
  resources :plantings do
    resources :harvests
  end
end