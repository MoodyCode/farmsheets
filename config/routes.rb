Rails.application.routes.draw do
  devise_for :users

  # resources :subscriptions do
  #   member do
  #     get :make_recurring
  #   end
  # end

  # resources :plans

  # post 'paypal/ipn_listener' => 'paypal#ipn_listener'

  # root 'plans#index'

  authenticated :user do
    root to: "plantings#index", as: :authenticated_root
  end

  root to: "static_pages#index"

  resources :plantings

end
