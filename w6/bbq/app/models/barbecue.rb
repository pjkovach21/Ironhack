class Barbecue < ActiveRecord::Base
  validates :title, presence: true
  validates :venue, presence: true
  validates :date, presence: true

  
   has_many :regitations
   has_many :users, through: :registations

 
end
