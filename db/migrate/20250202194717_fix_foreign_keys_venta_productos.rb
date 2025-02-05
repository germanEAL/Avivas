class FixForeignKeysVentaProductos < ActiveRecord::Migration[8.0]
  def change
    # Elimina claves foráneas incorrectas (ajusta el nombre de la tabla si es necesario)
    add_foreign_key :venta_productos, :productos, column: :producto_id, on_delete: :cascade
  end
end
