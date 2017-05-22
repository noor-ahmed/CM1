class CreateShortCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :short_codes do |t|
      t.string :name
      t.string :phone
      t.float :tariff

      t.timestamps
    end
  end
end
