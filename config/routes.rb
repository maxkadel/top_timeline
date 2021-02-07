Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :events
  get '/calendar', to: 'events#index'
  devise_for :users
end
