Rails.application.routes.draw do
  root 'welcome#index'

  get 'sign-in', to: "authentication#new"
  get 'sign-up', to: "registration#new"
  resources :categories
end
