class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :titulo
      t.integer :categoria
      t.text :descripcion

      t.timestamps
    end
  end
end
