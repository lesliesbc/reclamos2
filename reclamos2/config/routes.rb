Rails.application.routes.draw do
  devise_for :usuarios
  root :to=>  'inicio#index'
  get 'inicio/index'
  resources :reclamos
  resources :clientes
end
