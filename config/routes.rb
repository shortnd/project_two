Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "abouts#index"

  resources :abouts
  resources :events
    resources :attendences



#get "/attendences", to: "attendences#all_attendences"


end
