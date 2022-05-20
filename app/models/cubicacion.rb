class Cubicacion < ApplicationRecord
  validates :vo_tapa, presence: true
  validates :vo_bajo_block, presence: true
  validates :junta_diametro, presence: true
  validates :junta_espesor, presence: true
  validates :cil_diametro, presence: true
  validates :cil_carrera_de_piston, presence: true
  validates :modelo, presence: true
  validates :patente, presence: true
end

