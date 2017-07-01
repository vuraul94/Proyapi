class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :nombre
      t.text :texto
      t.references :lugar, foreign_key: true

      t.timestamps
    end
  end
end
