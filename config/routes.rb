Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'bag' => 'bag#index'
  get 'help' => 'help#index'
  get 'collections' => 'collections#index'

  get '/' => 'home#index'
  get 'home' => 'home#index'
  root to: 'home#index'
  post '/' => 'home#email'

  get 'user_prompt' => 'user_prompt#index'
  get 'sign_up' => 'sign_up#index'
  get 'login' => 'login#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
