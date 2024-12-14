# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed de usuarios
Usuario.destroy_all

Usuario.create(nombre: 'Admin', email: 'Admin@mail.com', password: 'admin123', telefono: 123456789, fecha_ingreso: '2024-11-26', rol: 'admin')
Usuario.create(nombre: 'Gerente', email: 'gerente@mail.com', password: 'gerente123', telefono: 123456789, fecha_ingreso: '2024-11-26', rol: 'gerente')
Usuario.create(nombre: 'Empleado', email: 'empleado@mail.com', password: 'empleado123', telefono: 123456789, fecha_ingreso: '2024-11-26', rol: 'empleado')


productos = [
  {
    nombre: "Camiseta básica",
    descripcion: "Camiseta de algodón 100% con cuello redondo.",
    precio: 15.99,
    stock: 50,
    categoria: "Ropa",
    talle: "M",
    color: "Blanco",
    fecha_ingreso: Time.now,
    fecha_modificacion: Time.now,
    fecha_baja: nil
  },
  {
    nombre: "Pantalón deportivo",
    descripcion: "Pantalón cómodo para entrenar o estar en casa.",
    precio: 25.99,
    stock: 30,
    categoria: "Deportes",
    talle: "L",
    color: "Negro",
    fecha_ingreso: Time.now - 7.days,
    fecha_modificacion: Time.now,
    fecha_baja: nil
  },
  {
    nombre: "Zapatillas running",
    descripcion: "Zapatillas ligeras con suela antideslizante.",
    precio: 55.50,
    stock: 20,
    categoria: "Calzado",
    talle: "42",
    color: "Azul",
    fecha_ingreso: Time.now - 30.days,
    fecha_modificacion: Time.now,
    fecha_baja: nil
  },
  {
    nombre: "Camisa formal",
    descripcion: "Camisa de manga larga ideal para eventos formales.",
    precio: 35.00,
    stock: 15,
    categoria: "Ropa",
    talle: "L",
    color: "Gris",
    fecha_ingreso: Time.now - 10.days,
    fecha_modificacion: Time.now,
    fecha_baja: nil
  },
  {
    nombre: "Gorra ajustable",
    descripcion: "Gorra con diseño moderno y cierre ajustable.",
    precio: 12.00,
    stock: 40,
    categoria: "Accesorios",
    talle: "Único",
    color: "Rojo",
    fecha_ingreso: Time.now - 5.days,
    fecha_modificacion: Time.now,
    fecha_baja: nil
  }
]

productos.each do |producto|
  Producto.create(producto)
end

puts "Se crearon #{productos.size} productos."
