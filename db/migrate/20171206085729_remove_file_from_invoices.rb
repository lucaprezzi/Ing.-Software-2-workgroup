class RemoveFileFromInvoices < ActiveRecord::Migration[5.1]
  def change
    remove_column :invoices, :file, :text
  end
end
