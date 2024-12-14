class CreateUsuarios < ActiveRecord::Migration[8.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.integer :telefono
      t.string :rol, null: false
      t.date :fecha_ingreso

      t.timestamps
    end
    add_index :usuarios, :nombre, unique: true
    add_index :usuarios, :email, unique: true
  end
end
