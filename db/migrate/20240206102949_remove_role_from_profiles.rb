class RemoveRoleFromProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :role, :integer
  end
end
