Rails.application.routes.draw do
  devise_for :users
  # controllers: { registrations: 'users/registrations'}
  # root to: 'pages#home'
  root to: 'jobs#index'
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
