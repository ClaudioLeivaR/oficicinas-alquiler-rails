class InquilinosController<ApplicationController

    before_action :buscar_inquilino, only:[:mostrar, :editar, :actualizar, :eliminar]


    def  listar
        @inquilino = Inquilino.all.order(id: :asc)
    end

    def mostrar

    end

    #get - devolver el formulario para crear un inquilino
    def crear
        @inquilino = Inquilino.new
        @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
    end

    #post - recibir los datos de un inquilino y guardar en bdd
    def guardar
        @inquilino = Inquilino.new(inquilino_params)

        if @inquilino.save
            redirect_to "/oficinas/listar"
        else
            @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
            render :crear
        end
    end
    
    #get
    def editar
        @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
    end
    
    #put/patch
    def actualizar
       if @inquilino.update(inquilino_params)
            redirect_to inquilino_path
        else
            render :editar
        end
    end
    #DELETE
    def eliminar
        @inquilino.destroy
        redirect_to action: :listar
    end

    private
    def inquilino_params
        return params.require(:inquilino).permit(:nombre, :apellido, :telefono, :rut, :oficina_id)
    end

    def buscar_inquilino
        @inquilino = Inquilino.find(params[:id])
    end

end

