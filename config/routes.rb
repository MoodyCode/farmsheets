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
  get 'update_cc', to: 'accounts#update_cc'
  post 'coupons', to: 'accounts#coupons'
  post 'suggestion_email', to: 'accounts#suggestion_email'

  resources :crops do
    resources :varietals
  end
  
  get 'dashboard', to: 'dashboard#index'
  # resources :dashboard
  resources :plantings do resources :harvests
  end

  post 'stripe/webhook'
end
