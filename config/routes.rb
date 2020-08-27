Rails.application.routes.draw do
  # HTTPVERB URL, to: 'CONTROLLER_NAME#ACTION_NAME'
  #  post '/users', to: 'users#create'
  #  post '/users/login', to: 'users#login'
  resources :style_categories
  resources :images
  resources :deliveries
  resources :seasons
  resources :styles
  resources :collections
  resources :categories
  resources :selected_styles
  resources :designers
  resources :favorite_designers
  resources :buyers
end
