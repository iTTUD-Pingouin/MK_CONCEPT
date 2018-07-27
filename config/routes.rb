Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get 'contact', to: 'pages#contact'

  get 'pieces', to: 'pieces#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
