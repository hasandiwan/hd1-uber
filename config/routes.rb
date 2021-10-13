Rails.application.routes.draw do
  get 'uber_request/new'
  get 'uber_request/arrived'
  devise_for :users
  root to: 'uber_request#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
