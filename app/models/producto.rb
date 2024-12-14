class Producto < ApplicationRecord
  has_many :venta_productos
  has_many :ventas, through: :detalles_ventas

  has_one_attached :imagen
end
