class CreateUserServices < ActiveRecord::Migration[5.0]
  def change
    create_table :user_services do |t|
      t.references :user_account, index: true
      t.references :service, index: true
      t.integer :priority_value

      t.timestamps
    end
  end
end
