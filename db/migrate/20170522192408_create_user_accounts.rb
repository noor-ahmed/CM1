class CreateUserAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_accounts do |t|
      t.string :phone
      t.string :name
      t.float :account_balance
      t.references :product, index: true
      t.references :service, index: true

      t.timestamps
    end
  end
end
