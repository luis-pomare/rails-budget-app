Rails.application.routes.draw do
  devise_for :users

  devise_scope :users do
    get 'log_in', to: 'devise/sessions#log_in'
  end

  resources :groups
  resources :entities
  root "groups#index"
end
