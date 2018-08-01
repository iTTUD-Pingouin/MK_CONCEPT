Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get 'contact', to: 'pages#contact'

  resources :pieces do
    collection do
      get 'pl', to: "pieces#pl"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
