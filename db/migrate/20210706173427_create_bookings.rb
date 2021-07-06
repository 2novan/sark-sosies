class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :end_date
      t.datetime :start_date
      t.integer :total_price
      t.text :address
      t.string :status
      t.text :description
      t.references :sosie, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
