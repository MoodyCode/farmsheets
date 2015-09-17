Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: "plantings#index", as: :authenticated_root
  end

  root to: "static_pages#index"

  resources :plantings do
    resources :harvests
  end
  
  resources :crops
  resources :plans
  resources :subscriptions do
    member do
      get :make_recurring
    end
  end

  post 'paypal/ipn_listener' => 'paypal#ipn_listener'

end
