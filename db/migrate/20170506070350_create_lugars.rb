class CreateLugars < ActiveRecord::Migration[5.0]
  def change
    create_table :lugars do |t|
      t.string :nombre
      t.text :descripcion
      t.string :foto

      t.timestamps
    end
  end
end
