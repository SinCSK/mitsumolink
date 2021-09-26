Rails.application.routes.draw do
  devise_for :users
  root to: 'quotations#index'
  resources :quotations, only: [:index, :new, :create] do
    resources :item_quotations, only: [:new, :create, :destroy]
  end
  resources :items, only: [:new, :create, :destroy]
end
