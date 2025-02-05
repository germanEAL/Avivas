class AddForeignKeysToVentaProductos < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :venta_productos, :ventas, column: :venta_id
    add_foreign_key :venta_productos, :productos, column: :producto_id
    add_foreign_key :ventas, :usuarios, column: :usuario_id
  end
end
