class CreateVentas < ActiveRecord::Migration[8.0]
  def change
    create_table :ventas do |t|
      t.datetime :fecha
      t.references :usuario, null: false, foreign_key: true
      t.string :cliente
      t.decimal :total
      t.string :estado

      t.timestamps
    end
  end
end
