class Booking < ApplicationRecord
  belongs_to :sosie
  belongs_to :user
  validates :end_date, :start_date, :total_price, :address, :description, presence: true
end
