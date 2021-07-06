class Sosie < ApplicationRecord
  belongs_to :user
  validates :name, :description, :address, :price_per_day, presence: true
  has_many :bookings
  end
  
end
