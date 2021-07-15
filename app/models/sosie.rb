class Sosie < ApplicationRecord
  belongs_to :user
  validates :name, :description, :address, :price_per_day, presence: true
  has_many :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
