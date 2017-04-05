Rails.application.routes.draw do
  get 'showcases/index', to:'showcases#index', as:'/'

  get 'showcases/show/:id', to:'showcases#show' , as: 'show'

  get 'showcases/category',to:'showcases#category', as: 'category'

  get 'showcases/about_pages', to:'showcases#about_pages', as: 'about'

  get 'showcases/results/', to:'showcases#results' , as: 'results'

  get 'showcases/cart', to: 'showcases#cart' , as: 'cart'
  # removed the id from results.
  post 'showcases/checkout' =>'showcases#checkout', as: 'checkout'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :showcases , only:[:index,:show] do
     member do
       post :remeber_cart #Post /customers/remember
       post :remeber_remove
     end

   end

  root to: 'showcases#index'
end
