Rails.application.routes.draw do
  resources :recipe_types
  resources :authors
  resources :categories
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "recipes#index"
end
