class CreateCallCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :call_charges do |t|
      t.belongs_to :call_record, index: true
      t.float :charged_amount

      t.timestamps
    end
  end
end
