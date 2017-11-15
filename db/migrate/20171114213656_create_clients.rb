class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :nominative
      t.string :email
      t.string :via
      t.integer :civico
      t.integer :cap
      t.string :citta
      t.string :provincia
      t.string :stato
      t.string :numero
      t.string :partita_iva
      t.string :codice_fiscale

      t.timestamps
    end
  end
end
