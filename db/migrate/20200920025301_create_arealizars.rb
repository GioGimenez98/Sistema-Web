class CreateArealizars < ActiveRecord::Migration[6.0]
  def change
    create_table :arealizars do |t|
      t.text :descripcion
      t.date :fecha
      t.time :tiempo

      t.timestamps
    end
  end
end
