Rails.application.routes.draw do
  devise_for :users
  root 'site#home'
  get "/" => "site#home"
  resources :barbecues 

  scope "/api" do
    resources :barbecues, only: [ :index, :show, :new, :create ], controller: "barbequeapi" #the api connect
    post "/barbecues/:id/join" => "barbequeapi#join_bbq"
  end
end
# the weird api connect 
