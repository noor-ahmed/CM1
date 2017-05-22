class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_pulse
      t.float :product_on_net_tariff
      t.float :product_off_net_tariff
      t.string :product_atw
      t.string :product_call_destination
      t.integer :product_priority
      t.belongs_to :fnf_item, index: true
      t.belongs_to :community, index: true

      t.timestamps
    end
  end
end
