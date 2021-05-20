Rails.application.routes.draw do
  get '/collections' => 'collections#index'
  get '/collections/:id' => 'collections#show'

  get '/' => 'home#index'
  get 'home' => 'home#index'
end
