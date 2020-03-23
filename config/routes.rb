Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

  resources :users , only:[:index] do
    collection do
      get :logout 
      get :creditcard
    end
  end

  
  resources :items, only: [:new, :show]

end
