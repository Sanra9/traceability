Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'incubators#index'
  get 'incubators', to: 'incubators#index'
  get '/incubators/new', to: 'incubators#new', as: 'new_incubator'
  post 'incubators', to: 'incubators#create'
  get 'incubators/:id', to: 'incubators#show', as: 'show_incubator'

  resources :entries do
    collection { post :import }
  end
end
