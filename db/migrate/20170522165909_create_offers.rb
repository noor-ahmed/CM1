class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :offer_pulse
      t.float :offer_on_net_tariff
      t.float :offer_off_net_tariff
      t.string :offer_atw
      t.string :offer_call_destination
      t.integer :offer_priority

      t.timestamps
    end
  end
end
