class CreateCommunities < ActiveRecord::Migration[5.0]
  def change
    create_table :communities do |t|
      t.string :name
      t.string :comm_pulse
      t.float :comm_on_net_tariff
      t.float :comm_off_net_tariff
      t.string :comm_atw
      t.string :comm_call_destination
      t.belongs_to :product, index: true

      t.timestamps
    end
  end
end
