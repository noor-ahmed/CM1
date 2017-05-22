class CreateIsdTariffs < ActiveRecord::Migration[5.0]
  def change
    create_table :isd_tariffs do |t|
      t.string :pulse
      t.float :tariff
      t.string :number_prefix

      t.timestamps
    end
  end
end
