Rails.application.routes.draw do
  devise_for :users
  root to: "super_powers#index"
  resources :pages
  resources :super_powers

  get '/ads', to: 'super_powers#ads', as: 'ads'
end
