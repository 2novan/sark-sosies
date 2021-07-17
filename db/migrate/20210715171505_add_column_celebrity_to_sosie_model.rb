class AddColumnCelebrityToSosieModel < ActiveRecord::Migration[6.0]
  def change
    add_column :sosies, :celebrity, :string
  end
end
