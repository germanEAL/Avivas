class RemoveContrasenaFromUsuarios < ActiveRecord::Migration[8.0]
  def change
    remove_column :usuarios, :contrasena, :string
  end
end
