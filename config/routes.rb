Rails.application.routes.draw do
  resources :images
  resources :items
  get '/' => 'home#index'
  get 'home' => 'home#index'
end
