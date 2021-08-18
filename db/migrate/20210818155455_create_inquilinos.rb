class CreateInquilinos < ActiveRecord::Migration[6.1]
  def change
    create_table :inquilinos do |t|
      t.string :nombre
      t.string :apellidos
      t.string :rut
      t.string :telefono
      t.references :oficina, null: false, foreign_key: true

      t.timestamps
    end
  end
end
