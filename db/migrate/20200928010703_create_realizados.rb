class CreateRealizados < ActiveRecord::Migration[6.0]
  def change
    create_table :realizados do |t|
      t.string :descripcion
      t.date :fecha_ini
      t.date :fecha_fina
      t.float :tiempo
      t.references :tarea, null: false, foreign_key: true

      t.timestamps
    end
  end
end
