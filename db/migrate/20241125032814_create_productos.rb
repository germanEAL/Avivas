class CreateProductos < ActiveRecord::Migration[8.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion
      t.decimal :precio
      t.integer :stock
      t.string :categoria
      t.string :talle
      t.string :color
      t.datetime :fecha_ingreso
      t.datetime :fecha_modificacion
      t.datetime :fecha_baja

      t.timestamps
    end
  end
end
