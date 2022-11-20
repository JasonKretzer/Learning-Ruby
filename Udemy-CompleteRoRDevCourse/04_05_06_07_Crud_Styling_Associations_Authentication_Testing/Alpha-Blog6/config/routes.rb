# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles, only: %i[show index new create edit update destroy]
  # if you expose all of the routes, you can shorten the line to
  # resources :articles

  root 'pages#home'

  # a get request to the about page routed to the pages controller with the about action
  get 'about', to: 'pages#about'
end
