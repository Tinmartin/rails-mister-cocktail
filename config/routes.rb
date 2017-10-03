Rails.application.routes.draw do
  get 'doses/new'

  get 'doses/create'

  get 'doses/destroy'

  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: :destroy
  root "cocktails#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
