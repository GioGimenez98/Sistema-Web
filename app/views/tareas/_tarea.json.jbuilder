json.extract! tarea, :id, :titulo, :user, :fecha, :cuidad, :departamento, :barrio, :estado, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
