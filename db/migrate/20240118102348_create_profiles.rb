class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.integer :role
      t.text :address
      t.integer :phone_number
      t.text :ShippingAddress

      t.timestamps
    end
  end
end
