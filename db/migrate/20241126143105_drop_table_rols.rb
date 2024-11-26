class DropTableRols < ActiveRecord::Migration[8.0]
  class DropTableRols < ActiveRecord::Migration[7.0]
    def up
      drop_table :rols
    end
  
    def down
      create_table :rols do |t|
        t.string :name
        t.timestamps
      end
    end
  end
  
end
