class HomeController < ApplicationController
  def index
    @productos  = Producto.limit(5)
  end
end
