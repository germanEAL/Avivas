class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def current_user
    @current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end 

  def logged_in?
    current_user.present?
  end

  protected
    def authenticate_user!
      unless current_user.present?
        flash[:danger] = "No tienes permisos para acceder a esta página."
        redirect_to root_path
      end
    end

    def usuario_autorizado!
      unless current_user.present? && !current_user.empleado?
        flash[:danger] = "No tienes permisos para acceder a esta página."
        redirect_to root_path
      end
    end
  helper_method :current_user, :logged_in?
end
