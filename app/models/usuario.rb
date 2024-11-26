class Usuario < ApplicationRecord
  Roles= [:admin, :user, :gerente, :empleado]

  def admin?
    self.role == 'admin'
  end

  def user?
    self.role == 'user'
  end 

  def gerente?
    self.role == 'gerente'
  end

  def empleado?
    self.role == 'empleado'
  end
end
