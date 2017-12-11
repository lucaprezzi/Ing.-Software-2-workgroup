class CreatePerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :performances do |t|
      t.belongs_to :client, foreign_key: true
      t.text :description
      t.date :date
      t.integer :duration
      t.boolean :invoiced
      t.belongs_to :rate, foreign_key: true

      t.timestamps
    end
  end
end
