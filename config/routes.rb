Rails.application.routes.draw do
  get 'showcase/index', to:'showcase#index', as:'/'

  get 'showcase/show', to:'showcase#show'

  get 'showcase/category',to:'showcase#category'



  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'showcase#index'
end
