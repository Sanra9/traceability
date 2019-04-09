Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'incubators', to: 'incubators#index'
  get '/incubators/new', to: 'incubator#new'
end
