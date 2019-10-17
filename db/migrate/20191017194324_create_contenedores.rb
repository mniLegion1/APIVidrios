class CreateContenedores < ActiveRecord::Migration[6.0]
  def change
    create_table :contenedores do |t|
      t.float :cantidadKg
      t.date :fecha
      t.text :hora

      t.timestamps
    end
  end
end
