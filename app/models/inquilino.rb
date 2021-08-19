class Inquilino < ApplicationRecord
  belongs_to :oficina

  after_save :verificar_disponibilidad_oficina
  after_destroy :verificar_disponibilidad_oficina

  validates :nombre, presence: true
  validates :apellidos, presence: true
  validates :telefono, presence: true
  
  validates :rut, presence: true
  validates :rut, uniqueness: true

  private 
  def verificar_disponibilidad_oficina
    puts "*******************************"
    if self.oficina.inquilinos.empty?
      self.oficina.esta_alquilada = false
    else
      self.oficina.esta_alquilada =true
    end
    self.oficina.save
  end
end
