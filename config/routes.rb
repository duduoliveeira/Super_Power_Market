Rails.application.routes.draw do
  devise_for :users
  root to: "super_powers#index"

  resources :super_powers do
    resources :orders, only: %i[create new]
  end
  resources :orders, except: %i[edit destroy]

  get '/ads', to: 'super_powers#ads', as: 'ads'

  get '/shopping', to: 'orders#shopping', as: 'shopping'
end
