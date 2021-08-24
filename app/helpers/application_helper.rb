module ApplicationHelper
    def validar_sesion
        #obtener una coockie que se llama admin_id
        #si la cookie existe entonces
        #voy a buscar el usuario en la base de datos
        #crear variable con @admin ppara tenerla disponible
        if session[:admin_id]
            @admin = Administrador.find(session[:admin_id])
        else
            eliminar_cookie
        end

        rescue ActiveRecord::RecordNotFound
            eliminar_cookie
        end    
            private
            def eliminar_cookie
                session[:admin_id] = nil
                redirect_to sesiones_path
            end

end
