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
  get 'account-detail', to: 'accounts#index'
  get 'reactivate', to: 'accounts#reactivate'
  get 'cancel', to: 'accounts#cancel'
  get 'subscribe', to: 'accounts#resubscribe'
  post 'coupons', to: 'accounts#coupons'

  resources :crops
  get 'dashboard', to: 'crops#index'

  resources :plantings do
    resources :harvests
  end

  post 'stripe/webhook'
end