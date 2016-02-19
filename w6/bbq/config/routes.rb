Rails.application.routes.draw do
  devise_for :users
  root 'site#home'
  get "/" => "site#home"
  resources :barbecues 

  scope "/api" do
    resources :barbecues, only: [ :index, :show, :new, :create ], controller: "barbequeapi"
  end
end
# end, controller: "barbecueapi"
