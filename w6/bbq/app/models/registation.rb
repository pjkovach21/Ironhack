class Registation < ActiveRecord::Base
	belongs_to :users
	belongs_to :barbecue
end
