class CreateSosies < ActiveRecord::Migration[6.0]
  def change
    create_table :sosies do |t|
      t.string :name
      t.text :description
      t.text :address
      t.integer :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
