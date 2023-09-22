Rails.application.routes.draw do
  resources :addresses
  resources :microchip_records
  resources :alteration_records
  resources :users
  resources :litters
  resources :fosters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
