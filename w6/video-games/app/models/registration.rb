class Redistration < ActiveRecord::Base
	belongs_to :player
	belongs_to :tournament
end
