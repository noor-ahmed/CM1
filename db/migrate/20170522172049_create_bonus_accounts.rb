class CreateBonusAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bonus_accounts do |t|
      t.float :ba_val_available
      t.float :ba_val_change
      t.float :ba_val_before
      t.string :ba_pulse
      t.float :ba_on_net_tariff
      t.float :ba_off_net_tariff
      t.string :ba_atw
      t.string :ba_call_destination
      t.integer :ba_priority
      t.belongs_to :user_account, index: true

      t.timestamps
    end
  end
end
