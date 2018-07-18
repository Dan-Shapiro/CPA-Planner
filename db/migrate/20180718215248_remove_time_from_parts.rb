class RemoveTimeFromParts < ActiveRecord::Migration[5.2]
  def change
    remove_column :parts, :time, :time
  end
end
