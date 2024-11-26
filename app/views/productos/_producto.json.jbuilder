json.extract! producto, :id, :nombre, :descripcion, :precio, :stock, :categoria, :talle, :color, :fecha_ingreso, :fecha_modificacion, :fecha_baja, :created_at, :updated_at
json.url producto_url(producto, format: :json)
