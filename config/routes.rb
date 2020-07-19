Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles
  #method which can be used to declare a standard REST resource

  root 'welcome#index'
  # tells Rails to map requests to the root of the application to the welcome controller's index action and get 'welcome/index' tells Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action.
end
