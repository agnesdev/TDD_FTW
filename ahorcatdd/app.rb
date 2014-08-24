require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require './lib/iniciar_sesion'
require './lib/jugar'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
	set :public_folder, "#{File.dirname(__FILE__)}/public"
end

get '/' do
	@@palabras = Array["EQUIPO", "JUEGO", "ENTREGAS", "PRUEBAS", "PROGRAMACION", "MEJORA", "INTEGRACION", "PROPIEDAD", "ESTANDARES", "METAFORA", "RITMO"]
	@@jugar = Jugar.new
	@@sesion = Iniciar_Sesion.new
	@mensaje_inicial = @@sesion.mensaje_inicial
	erb :iniciar_sesion
end

post '/configurar_juego' do
	usuario = @params[:usuario]
	@@sesion.iniciar_sesion(usuario)
	@saludo = @@sesion.mensaje_bienvenida(1)
	@palabra = @@palabras[Random.new.rand(0..@@palabras.length)]

	erb :configurar_juego

end

get '/jugar' do
	
	@secuencia = ""
	@mensaje_final = ""

	if !@params[:palabra].nil? and @params[:letra].nil?
		@@jugar.iniciar_secuencia(@params[:palabra])
		@secuencia = @@jugar.secuencia
	end

	if !@params[:letra].nil?
		@letra = @params[:letra]
		@@jugar.adivinar(@letra)
		@secuencia = @@jugar.secuencia
	end
	@intentos = @@jugar.intentos
	@mensaje_final = @@jugar.mensaje_final
	erb:jugar
end

get '/resultado' do
	@nombre = @@sesion.jugador1
	@mensaje = "Ganaste"
	erb:resultado
end




