# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see
  # https://guides.rubyonrails.org/routing.html
  resources :businesses
  post 'contact', to: 'businesses#contact'

  resources :about

  root 'businesses#index'
end
