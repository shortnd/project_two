Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "abouts#index"

  resources :events
    resources :users
  resources :abouts
  # resources :users
end
