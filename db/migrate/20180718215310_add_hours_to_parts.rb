class AddHoursToParts < ActiveRecord::Migration[5.2]
  def change
    add_column :parts, :hours, :integer
  end
end
