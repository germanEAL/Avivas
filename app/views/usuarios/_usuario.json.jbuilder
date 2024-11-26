json.extract! usuario, :id, :nombre, :email, :telefono, :rol_id, :fecha_ingreso, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
