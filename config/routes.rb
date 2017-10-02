Rails.application.routes.draw do
  GET "cocktails", to: "cocktails#index"
  GET "cocktails/:id", to: "cocktails#show"
  GET "cocktails/new", to: "cocktails#new"
  POST "cocktails", to: "cocktails#create"
  GET "cocktails/42/doses/new"
  POST "cocktails/42/doses"

  resources :doses, only:
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
