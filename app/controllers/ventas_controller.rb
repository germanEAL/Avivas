class VentasController < ApplicationController
  before_action :authenticate_user! 
  skip_before_action :verify_authenticity_token, only: [:create, :index, :show]


def new
  @venta = Venta.new
  @productos = Producto.all
  @usuarios = Usuario.all
end 



def create
  ActiveRecord::Base.transaction do
    @venta = Venta.create!(
      usuario_id: current_user.id,
      fecha: Time.now,
      cliente: params[:cliente] || "Cliente anónimo",
      total: 0,
      estado: "pendiente"
    )


    params[:productos].each do |producto|
      producto_data = Producto.find(producto[:id])

      # Verificar stock
      if producto_data.stock < producto[:cantidad].to_i
        raise ActiveRecord::Rollback, "Stock insuficiente para #{producto_data.nombre}"
      end

      # Crear detalle de la venta
      @venta.venta_productos.create!(
        producto_id: producto_data.id,
        cantidad: producto[:cantidad],
        precio: producto_data.precio,
        total: producto[:cantidad] * producto_data.precio
      )

      # Actualizar stock del producto
      producto_data.update!(stock: producto_data.stock - producto[:cantidad].to_i)
    end

    @venta.update!(total: @venta.venta_productos.map(&:calcular_total).sum)
    @venta.update!(estado: "confirmada")
  end

  render json: { message: "Venta confirmada exitosamente." }
rescue => e
  Rails.logger.error("Error al procesar la venta: #{e.message}")
rescue SQLite3::ConstraintException => e
  render json: { error: "Error de clave foránea: #{e.message}. Posible causa: Venta o Producto no existen." }, status: :unprocessable_entity
  render json: { error: e.message }, status: :unprocessable_entity
end



def show
  @venta = Venta.find(params[:id])
end

def index
  @ventas = Venta.all
end 

  def check_login
    if logged_in?
      true
    else
      redirect_to root_path
    end
  end

  private 
  def venta_params
    params.require(:venta).permit(productos: [:id, :cantidad])
  end
end