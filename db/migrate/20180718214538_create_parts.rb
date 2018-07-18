class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :chapter
      t.string :module
      t.string :name
      t.time :time
      t.boolean :completed
      t.belongs_to :task, foreign_key: true

      t.timestamps
    end
  end
end
