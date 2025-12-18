Rails.application.routes.draw do
  resources :users
  resources :subjects
  resources :courses
  resources :videos
  resources :analyses
  
  root "home#index"
  get 'up' => 'rails/health#show', as: :rails_health_check
end