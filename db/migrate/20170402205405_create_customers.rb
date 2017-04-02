class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :shipping_address
      t.string :email
      t.string :postal_code
      t.integer :province_id

      t.timestamps
    end
  end
end
