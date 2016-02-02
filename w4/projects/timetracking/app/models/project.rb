class Project < ActiveRecord::Base
	has_many :entries
	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end
	def self.last_created_projects (number)
		limit(number).order("created_at asc")
	end
end
