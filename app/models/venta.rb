class Venta < ApplicationRecord
  belongs_to :usuario
  has_many :venta_productos
  has_many :productos, through: :venta_productos
end


