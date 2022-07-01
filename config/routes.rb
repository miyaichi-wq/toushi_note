Rails.application.routes.draw do
  root 'static_pages#top'
  
  get 'dashboard', to: 'dashboard#index'
  resources :user_stocks

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }, controllers: { registrations: 'users/registrations' }
end
