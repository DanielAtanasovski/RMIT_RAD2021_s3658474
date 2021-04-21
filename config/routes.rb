Rails.application.routes.draw do
  get '/' => 'home#index'
  get 'home' => 'home#index'
end
