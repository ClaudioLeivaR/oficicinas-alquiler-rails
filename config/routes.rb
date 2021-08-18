Rails.application.routes.draw do
  get 'oficinas/listar', to: 'oficinas#listar'
  get 'oficinas/crear', to: 'oficinas#crear'
  post 'oficinas/guardar', to: 'oficinas#guardar'
end
