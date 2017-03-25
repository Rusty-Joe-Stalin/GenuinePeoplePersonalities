Rails.application.routes.draw do
  get 'showcases/index', to:'showcases#index', as:'/'

  get 'showcases/show', to:'showcases#show'

  get 'showcases/category',to:'showcases#category'



  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'showcases#index'
end
