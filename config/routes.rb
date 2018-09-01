# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :markers

  resources :journeys

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :markers
  end
end
