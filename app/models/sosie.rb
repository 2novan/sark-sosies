class Sosie < ApplicationRecord
  belongs_to :user
  validates :name, :description, :address, :price_per_day, presence: true
    
  end
  
end
