class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.float :hourly_rate

      t.timestamps
    end
  end
end
