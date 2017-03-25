Rails.application.routes.draw do
  get 'showcases/index', to:'showcases#index', as:'/'

  get 'showcases/show/:id', to:'showcases#show' , as: 'show'

  get 'showcases/category',to:'showcases#category'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'showcases', only:[:index, :show]

  root 'showcases#index'
end
