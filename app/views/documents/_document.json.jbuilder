json.extract! document, :id, :titulo, :categoria, :descripcion, :created_at, :updated_at
json.url document_url(document, format: :json)