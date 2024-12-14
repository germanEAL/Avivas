class SesionesController < ApplicationController
  def new
  end

  def create
    usuario = Usuario.find_by(email: params[:email])

    if usuario&.authenticate(params[:password])
      session[:usuario_id] = usuario.id
      redirect_to root_path, notice: "Inicio de sesión exitoso."
    else
      flash.now[:alert] = "Email o contraseña inválidos."
      render :new
    end
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to root_path, notice: "Has cerrado sesión."
  end
end
