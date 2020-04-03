Rails.application.routes.draw do
  # get 'purchase/index'
  # get 'purchase/done'
  devise_for :users
  root 'items#index'
  
  resources :users , only:[:index] do
    collection do
      get :logout 
      get :creditcard
    end
  end

  resources :items do

    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
    member do
      get :purchase
    end
    collection do
      get :category
    end
  end

  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end

  resources :purchase, only: [:index] do
    member do
      get 'index', to: 'purchase#index'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end

end

