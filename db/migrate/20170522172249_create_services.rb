class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :service_pulse
      t.float :service_on_net_tariff
      t.float :service_off_net_tariff
      t.string :service_atw
      t.string :service_call_destination
      t.integer :service_priority

      t.timestamps
    end
  end
end
