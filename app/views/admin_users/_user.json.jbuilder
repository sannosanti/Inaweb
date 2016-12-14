json.extract! user, :id, :titulo, :categoria, :descripcion, :created_at, :updated_at
json.url user_url(user, format: :json)