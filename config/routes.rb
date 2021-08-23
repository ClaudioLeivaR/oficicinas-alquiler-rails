Rails.application.routes.draw do
 
  #rutas oficinas
  get 'oficinas/listar', to: 'oficinas#listar'  
  get 'oficinas/crear', to: 'oficinas#crear'    
  post 'oficinas/guardar', to: 'oficinas#guardar'

  #rutas de iquilinos
  get 'inquilinos'            , to: 'inquilinos#listar'   , as: 'inquilinos'
  get 'inquilinos/crear'      , to: 'inquilinos#crear'    , as: 'nuevo_inquilino'
  get 'inquilinos/:id'        , to: 'inquilinos#mostrar'  , as: 'inquilino'
  get 'inquilinos/:id/editar'  , to: 'inquilinos#editar'  , as: 'editar_inquilino'



  post    'inquilinos'        , to: 'inquilinos#guardar'
  put     'inquilinos/:id'    , to: 'inquilinos#actualizar'
  patch   'inquilinos/:id'    , to: 'inquilinos#actualizar'
  delete  'inquilinos/:id'    , to: 'inquilinos#eliminar'




end
