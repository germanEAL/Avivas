class AddPasswordDigestToUsuarios < ActiveRecord::Migration[8.0]
  def change
    add_column :usuarios, :contrasena, :string
  end
end
