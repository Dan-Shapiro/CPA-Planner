class AddMinutesToParts < ActiveRecord::Migration[5.2]
  def change
    add_column :parts, :minutes, :integer
  end
end
