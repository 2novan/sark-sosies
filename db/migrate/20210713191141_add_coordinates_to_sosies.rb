class AddCoordinatesToSosies < ActiveRecord::Migration[6.0]
  def change
    add_column :sosies, :latitude, :float
    add_column :sosies, :longitude, :float
  end
end
