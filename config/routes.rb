Rails.application.routes.draw do
  get 'portfolio/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "portfolio#index"
end
