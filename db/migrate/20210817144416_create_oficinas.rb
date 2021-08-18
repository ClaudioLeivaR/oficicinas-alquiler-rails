class CreateOficinas < ActiveRecord::Migration[6.1]
  def change
    create_table :oficinas do |t|
      t.string :codigo
      t.float :precio
      t.boolean :esta_alquilada

      t.timestamps
    end
  end
end
