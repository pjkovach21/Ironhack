class Project < ActiveRecord::Base
	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end
	def self.last_created_projects (number)
		limit(number).order("created_at asc")
	end
end
