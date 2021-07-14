class ChangeBookingAdressTypeToString < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :address, :string
  end
end
