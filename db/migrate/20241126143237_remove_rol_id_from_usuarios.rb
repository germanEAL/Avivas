class RemoveRolIdFromUsuarios < ActiveRecord::Migration[8.0]
  def change
    remove_column :usuarios, :rol_id, :integer
  end
end
