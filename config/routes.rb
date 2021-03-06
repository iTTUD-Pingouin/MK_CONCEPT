Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get 'contact', to: 'pages#contact'

  resources :pieces do
    collection do
      get 'pltp', to: "pieces#pltp"
    end
    collection do
      get 'signalisations', to: "pieces#signalisations"
    end
    collection do
      get 'lubrifiants', to: "pieces#lubrifiants"
    end
    collection do
      get 'accessoires', to: "pieces#accessoires"
    end
    collection do
      get 'occasions', to: "pieces#occasions"
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
