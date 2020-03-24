Rails.application.routes.draw do
  root "items#purchase"
  resources :items do
    member do
      get :purchase
    end
  end
end
