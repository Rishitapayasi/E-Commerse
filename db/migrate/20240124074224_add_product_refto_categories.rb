class AddProductReftoCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :product, foreign_key: true
  end
end
