Rails.application.routes.draw do

  root to: 'hires#index'

  devise_for :users
  resources :hires

end
