class Usuario < ApplicationRecord

  has_many :ventas 
  has_secure_password
  Roles= [:admin, :user, :gerente, :empleado]

  def admin?
    self.rol == 'admin'
  end

  def user?
    self.rol == 'user'
  end 

  def gerente?
    self.rol == 'gerente'
  end

  def empleado?
    self.rol == 'empleado'
  end
end
