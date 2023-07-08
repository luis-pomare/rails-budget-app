Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get 'users/log_in', to: 'users/sessions#log_in'
  end

  resources :groups
  resources :entities
  root "groups#index"
end
