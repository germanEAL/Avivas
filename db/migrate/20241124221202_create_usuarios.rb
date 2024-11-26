class CreateUsuarios < ActiveRecord::Migration[8.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.decimal :telefono
      t.references :rol, null: false, foreign_key: true
      t.date :fecha_ingreso

      t.timestamps
    end
    add_index :usuarios, :nombre, unique: true
    add_index :usuarios, :email, unique: true
  end
end
