class CreateCallRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :call_records do |t|
      t.belongs_to :user_account, index: true
      t.string :call_destination
      t.integer :duration
      t.timestamps :date_time

      t.timestamps
    end
  end
end
