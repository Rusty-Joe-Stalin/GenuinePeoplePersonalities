Rails.application.routes.draw do
  get 'showcase/index'

  get 'showcase/show'

  get 'showcase/category'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
