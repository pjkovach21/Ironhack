class Concert < ActiveRecord::Base
	validates :artist, presence: true
	validates :venue, presence: true
	validates :city, presence: true
	validates :description, presence: true
	validates :date, presence: true
	validate :concert_day_after_today
	validates :price, 
		presence: true,
		numericality: true

	has_many :comments

	def self.concerts_today()
		beginning_of_day = DateTime.now.beginning_of_day
		end_of_day = DateTime.now.end_of_day
		Concert.where(date: beginning_of_day..end_of_day)
	end

	def self.concerts_month()
		today = DateTime.now
		end_of_month = DateTime.now.end_of_month
		Concert.where(date: today..end_of_month)
	end

	private
	def concert_day_after_today
		if self.date < DateTime.now
			errors.add(:date, 'must be a valid date in future') 
		end
	end
end
