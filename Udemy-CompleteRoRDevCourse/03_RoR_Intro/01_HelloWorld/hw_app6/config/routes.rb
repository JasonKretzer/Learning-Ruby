# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles
  # root 'application#hello' # tells rails to expect a 'hello' method in the application controller

  root 'pages#home' # use the pages controller/views with a 'home' method

  # a get request to the about page routed to the pages controller with the about action
  get 'about', to: 'pages#about'
end
