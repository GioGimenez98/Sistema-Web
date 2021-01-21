class Realizado < ApplicationRecord
  belongs_to :tarea
  has_rich_text :descripcion
end
