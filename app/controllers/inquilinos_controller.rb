class InquilinosController<ApplicationController

    #get - devolver el formulario para crear un inquilino
    def crear
        @inquilino = Inquilino.new
        @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
    end

    #post - recibir los datos de un inquilino y guardar en bdd
    def guardar
        valores = params.require(:inquilino).permit(:nombre, :apellidos, :telefono, :rut, :oficina_id)
        puts valores.inspect

        @inquilino = Inquilino.new(valores)

        if @inquilino.save
            redirect_to "/oficinas/listar"
        else
            @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)

            render :crear

        end

    end

end