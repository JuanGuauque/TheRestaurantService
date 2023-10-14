class ThevistasController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'json'

  def index
  end

  def recetas
    @json_response = JSON.parse(Net::HTTP.get(URI("http://pedidosservice:3000/recetas")))
  end

  def historial_compras
    @json_response = JSON.parse(Net::HTTP.get(URI("http://plazamercadoservice:3000/historial")))
  end

  def bodega
    @json_response = JSON.parse(Net::HTTP.get(URI("http://bodegaservice:3000/ingrediente")))
  end

  def pedidos
    @json_response = JSON.parse(Net::HTTP.get(URI("http://pedidosservice:3000/pedidos")))
  end

  def make
    @json_response = JSON.parse(Net::HTTP.get(URI("http://pedidosservice:3000/make")))

    redirect_to '/pedidos'
  end
end
