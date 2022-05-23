class CubicacionsController < ApplicationController
  #skip_before_action :authenticate_user!, only: %i[index new create] 
  def index
    @cubicacions = Cubicacion.all
  end

  def show
    @cubicacion = Cubicacion.find(paramns[:id])
  end 

  def new
    @cubicacion = Cubicacion.new
  end

  def create
    @cubicacion = Cubicacion.new(cubicacion_params)

    cil_diametro = @cubicacion.cil_diametro
    cil_carrera = @cubicacion.cil_carrera_de_piston
    junta_diametro = @cubicacion.junta_diametro
    junta_espesor = @cubicacion.junta_espesor
    vol_tapa = @cubicacion.vo_tapa
    vo_bajo_block = @cubicacion.vo_bajo_block
    

    @cubicacion.cilindrada_unitaria = ((3.14 * (cil_diametro ** 2) * cil_carrera )/ 4).round(2)
    @cubicacion.vol_junta = ((3.14 *(junta_diametro ** 2) * junta_espesor )/4).round(2)

    @cubicacion.vol_total =  (@cubicacion.vol_junta + vol_tapa + vo_bajo_block).round(2)
    @cubicacion.vol_camara_compresion = ((@cubicacion.vol_total + @cubicacion.cilindrada_unitaria )/@cubicacion.vol_total).round(2)
    @cubicacion.workshop = current_user.workshop
   

    if @cubicacion.save
      redirect_to cubicacions_path, notice: "Suscribite a nuestro canal de youtube"
    else
      render :new
    end
   
 
  end

  



  private
  def cubicacion_params
    params.require(:cubicacion).permit(:vo_tapa, :vo_bajo_block, :junta_diametro, :junta_espesor, :cil_diametro, :cil_carrera_de_piston, :modelo, :patente)
  end



end
