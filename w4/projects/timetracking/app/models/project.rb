class Project < ActiveRecord::Base
	validates :name 
		presence: true
		uniqueness: true
		length: {maximum: 30}
		format: {with: /(\w|\s)+/}
	validates :hours
		numericality: true
		presence: true
	validates :minutes
		numericality: true
		presence: true
	validates :date
		presence: true

	has_many :entries
	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end
	def self.last_created_projects (number)
		limit(number).order("created_at asc")
	end
	def total_hours_in_month(month, year)
		month = Date.new(year,month)
		sum = 0 
		min_sum = 0
		entries.where(date:month.beginning_of_month..month.end_of_month).each do |entry|	
			sum += entry.hours
			min_sum += entry.minutes
		end

		min_to_hour = min_sum/60
		total_time = sum + min_to_hour
		total_time
	end
end
