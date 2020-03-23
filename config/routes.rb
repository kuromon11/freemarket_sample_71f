Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resource :users do
    collection do
      get :logout 
      get :creditcard
    end
  end
end
