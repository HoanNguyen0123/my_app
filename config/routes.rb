Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  get "products/index"
  root "products#index"
  resources :products do
    resources :subscribers, only: [ :create ]
  end
end
