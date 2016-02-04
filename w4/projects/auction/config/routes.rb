Rails.application.routes.draw do

	get "/" => "site#home"

  resources :users, { :only => [:create, :show, :destroy, :new] } do
    resources :products, :only => [:index, :show, :create, :destroy, :new]
  end

    resources :products, :only => [:index, :show, :create, :destroy] do
      resources :bids, :only => [:index, :show, :create, :destroy]
  end
end


# GOOD
# { :only => [:create, :show, :destroy, :new] }
# { only: [:create, :show, :destroy, :new] }


# BAD
# { :only [:create, :show, :destroy, :new] }