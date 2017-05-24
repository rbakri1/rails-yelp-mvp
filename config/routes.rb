Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do

    resources :reviews, only: [ :new, :create ]

    get "restaurants", to: "restaurants#index"

    get "restaurants/:id", to: "restaurants#show"

    get "restaurants/new", to: "restaurants#new"
    post "restaurants", to: "restaurants#create"

  end
end
