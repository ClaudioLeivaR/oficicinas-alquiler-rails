Rails.application.routes.draw do
 
  #rutas oficinas
  get 'oficinas/listar', to: 'oficinas#listar' 
  get 'oficinas/crear', to: 'oficinas#crear'
  post 'oficinas/guardar', to: 'oficinas#guardar'

  #rutas de iquilinos
  get 'inquilinos'            , to: 'inquilinos#listar'
  get 'inquilinos/crear'      , to: 'inquilinos#crear'
  get 'inquilinos/:id'        , to: 'inquilinos#mostrar'
  get 'inquilinos/:id/editar'  , to: 'inquilinos#editar'



  post    'inquilinos/crear', to: 'inquilinos#guardar'
  put     'inquilinos/:id'   , to: 'inquilinos#actualizar'
  patch   'inquilinos/:id'   , to: 'inquilinos#actualizar'
  delete  'inquilinos/id'     , to: 'inquilinos#eliminar'




end
