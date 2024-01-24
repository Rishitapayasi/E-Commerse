class AddUserReftoProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :user, foregin_key: true
  end
end
