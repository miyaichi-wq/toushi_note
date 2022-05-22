Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' },
             controllers: { registrations: 'users/registrations' }
  root 'users#index'
end
