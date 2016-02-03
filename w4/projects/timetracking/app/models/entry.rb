class Entry < ActiveRecord::Base
	belongs_to :project

	validates :hours
		numericality: {only_integer: true}
		presence: true
	validates :minutes
		numericality: {only_integer: true}
		presence: true
	validates :date
		presence: true
	validate :project_id, presence: true
	#or validate_associated
end
