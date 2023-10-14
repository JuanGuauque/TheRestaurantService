Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "thevistas#index"
  get 'recetas' => 'thevistas#recetas'
  get 'historial_compras' => 'thevistas#historial_compras'
  get 'bodega' => 'thevistas#bodega'
  get 'pedidos' => 'thevistas#pedidos'
  get 'make' => 'thevistas#make'
end
