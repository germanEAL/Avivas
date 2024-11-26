class AddRolToUsuarios < ActiveRecord::Migration[8.0]
  def change
    add_column :usuarios, :rol, :string
  end
end
