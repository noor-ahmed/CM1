class CreateAccumulators < ActiveRecord::Migration[5.0]
  def change
    create_table :accumulators do |t|
      t.float :acc_val_change
      t.float :acc_val_available
      t.belongs_to :user_account, index: true

      t.timestamps
    end
  end
end
