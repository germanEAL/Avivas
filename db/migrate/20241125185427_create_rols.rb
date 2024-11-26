class CreateRols < ActiveRecord::Migration[8.0]
  def change
    create_table :rols do |t|
      t.string :nombre

      t.timestamps
    end
    add_index :rols, :nombre, unique: true
  end
end
