
class Iniciar_Sesion
	attr_accessor :mensaje_inicial, :jugador1


	def initialize
		@mensaje_inicial = "Iniciar sesion"
	end

	def iniciar_jugadores
		@jugador1 = nil
	end

	def iniciar_sesion(nombre)
		if @jugador1 == nil
			@jugador1 = nombre
		end
	end

	def mensaje_bienvenida(numero)
		mensaje = ""
		if numero == 1
			mensaje = "Bienvenido #{jugador1}"
		end
		return mensaje
	end

	def obtener_palabra
		palabras = Array["EQUIPO", "JUEGO", "ENTREGAS", "PRUEBAS", "PROGRAMACION", "MEJORA", "INTEGRACION", "PROPIEDAD", "ESTANDARES", "METAFORA", "RITMO"]
		return palabras[Random.new.rand(0..palabras.length)]
	end
end
