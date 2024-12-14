class CreateVentaProductos < ActiveRecord::Migration[8.0]
  def change
    create_table :venta_productos do |t|
      t.references :venta, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true
      t.integer :cantidad
      t.decimal :total

      t.timestamps
    end
  end
end
