Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index show new]
  post '/restaurants', to: 'restaurants#create', as: :create_restaurant
end
