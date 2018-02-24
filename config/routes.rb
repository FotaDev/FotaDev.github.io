Rails.application.routes.draw do

  resources :hires
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teams
  root to: 'teams#index'
end
