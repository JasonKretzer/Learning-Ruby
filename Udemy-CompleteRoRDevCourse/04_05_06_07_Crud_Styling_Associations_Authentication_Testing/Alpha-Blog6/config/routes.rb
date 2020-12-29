# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles, only: %i[show index new create]
  root 'pages#home'

  # a get request to the about page routed to the pages controller with the about action
  get 'about', to: 'pages#about'
end
