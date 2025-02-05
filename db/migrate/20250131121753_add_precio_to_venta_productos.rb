class AddPrecioToVentaProductos < ActiveRecord::Migration[8.0]
  def change
    add_column :venta_productos, :precio, :decimal
  end
end
