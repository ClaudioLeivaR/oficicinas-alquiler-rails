Rails.application.routes.draw do
 
  #rutas oficinas
  get 'oficinas/listar', to: 'oficinas#listar'
  get 'oficinas/crear', to: 'oficinas#crear'
  post 'oficinas/guardar', to: 'oficinas#guardar'

  #rutas de iquilinos
  get 'inquilinos/crear', to: 'inquilinos#crear'
  post 'inquilinos/crear', to: 'inquilinos#guardar'

end
