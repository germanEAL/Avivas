class VentaProducto < ApplicationRecord
  belongs_to :venta
  belongs_to :producto

  validates :cantidad, presence: true, numericality: { greater_than: 0 }
  validates :precio, presence: true, numericality: { greater_than: 0 }
  validates :total, presence: true, numericality: { greater_than: 0 }

  before_save :calcular_total

  def calcular_total
    self.total = cantidad * precio
  end
end
