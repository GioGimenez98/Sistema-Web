class CreateTareas < ActiveRecord::Migration[6.0]
  def change
    create_table :tareas do |t|
      t.string :titulo
      t.references :user
      t.date :fecha
      t.string :cuidad
      t.string :departamento
      t.string :barrio
      t.boolean :estado

      t.timestamps
    end
  end
end
