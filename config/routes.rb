Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: "plantings#index", as: :authenticated_root
  end

  root to: "static_pages#index"

  resources :plantings

end
