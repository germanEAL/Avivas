class AddForeignKeysVentaProducts < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :venta_productos, :productos, column: :producto_id, on_delete: :cascade
  end
end
