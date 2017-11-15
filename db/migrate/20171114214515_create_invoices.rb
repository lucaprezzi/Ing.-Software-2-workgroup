class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.belongs_to :client, foreign_key: true
      t.integer :number
      t.date :date
      t.text :file
      t.float :amount

      t.timestamps
    end
  end
end
