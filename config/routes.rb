Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "pages#home"

  resources :super_powers do
    resources :orders, only: %i[create new]
    resources :reviews, only: %i[create new]
  end
  resources :orders, except: %i[edit destroy]
  resources :reviews, only: :destroy

  get '/ads', to: 'super_powers#ads', as: 'ads'

  get '/shopping', to: 'orders#shopping', as: 'shopping'

  get 'users/:id', to: 'users#show', as: 'user'
end
