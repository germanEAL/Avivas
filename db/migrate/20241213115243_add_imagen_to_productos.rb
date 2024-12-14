class AddImagenToProductos < ActiveRecord::Migration[8.0]
  def change
    add_column :productos, :imagen, :string
  end
end
