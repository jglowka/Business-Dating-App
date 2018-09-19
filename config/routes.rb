Rails.application.routes.draw do
  devise_for :users
  get 'events/index'

  resources :events do
    resources :atendees
  end

  root 'events#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
