class OficinasController < ApplicationController
  def listar

    @lista_oficinas = Oficina.all

  end

  def crear
    @oficina_nueva = Oficina.new
  end

  def guardar
    valores = params.require(:oficina).permit(:codigo, :precio)
    @oficina_nueva = Oficina.new(valores)
    @oficina_nueva.esta_alquilada = false

    if @oficina_nueva.save
      redirect_to action:"listar"
    else
      render :crear
    end


  end

  

end
