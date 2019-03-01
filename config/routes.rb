Rails.application.routes.draw do
  get 'auths/login'
  post 'auths/login'
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
