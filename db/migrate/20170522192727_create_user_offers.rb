class CreateUserOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :user_offers do |t|
      t.belongs_to :user_account, index: true
      t.belongs_to :offer, index: true
      t.integer :priority_value

      t.timestamps
    end
  end
end
