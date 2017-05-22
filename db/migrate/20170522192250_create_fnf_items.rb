class CreateFnfItems < ActiveRecord::Migration[5.0]
  def change
    create_table :fnf_items do |t|
      t.integer :no_of_fnf
      t.string :pulse
      t.float :fnf_on_net_tariff
      t.float :fnf_off_net_tariff
      t.string :fnf_atw
      t.integer :fnf_priority

      t.timestamps
    end
  end
end
