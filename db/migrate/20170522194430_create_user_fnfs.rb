class CreateUserFnfs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_fnfs do |t|
      t.string :fnf_phone_no
      t.belongs_to :user_account, index: true

      t.timestamps
    end
  end
end
