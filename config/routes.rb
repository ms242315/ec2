Rails.application.routes.draw do
  resources :order_details
  resources :line_items
  resources :carts
  resources :check_items
  resources :favorites
  devise_for :users
  resources :tags, except: :show
  resources :books
  get :mypage, to: 'mypage#index'

  resources :orders, only: [:new, :create, :confirm] do
    collection do
      post :confirm
    end
  end
  resources :products

  root 'books#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
