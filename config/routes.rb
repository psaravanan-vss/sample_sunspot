Rails.application.routes.draw do
  root "users#index"
  resources :companies
  resources :users
  get "/search"=>"search#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
