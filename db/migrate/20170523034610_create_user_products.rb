class CreateUserProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_products do |t|
      t.references :user_account, index: true
      t.references :product, index: true
      t.integer :priority_value

      t.timestamps
    end
  end
end
