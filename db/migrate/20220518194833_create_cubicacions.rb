class CreateCubicacions < ActiveRecord::Migration[6.1]
  def change
    create_table :cubicacions do |t|
      t.float :vo_tapa
      t.float :vo_bajo_block
      t.float :vol_junta
      t.float :vol_total
      t.float :cilindrada_unitaria
      t.float :vol_camara_compresion
      t.float :cil_diametro
      t.float :cil_carrera_de_piston
      t.float :junta_diametro
      t.float :junta_espesor
      t.float :datos_pi, default:3.14
      t.float :datos_divisor, default: 4

      t.timestamps
    end
  end
end
