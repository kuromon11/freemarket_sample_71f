Rails.application.routes.draw do
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
  end
end

