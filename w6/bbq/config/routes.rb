Rails.application.routes.draw do
  devise_for :users
  root 'site#home'
  get "/" => "site#home"
  resources :barbecues, only: [ :index, :show, :new, :create ]
end
