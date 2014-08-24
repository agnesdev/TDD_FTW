class Jugar
	attr_accessor :palabra, :secuencia, :intentos, :mensaje_final, :secuencia_anterior

	def initialize
		@secuencia = ""
		@palabra = ""
		@intentos = 0
		@mensaje_final = ""
		@fallo = false
	end

	def iniciar_secuencia(palabra)
		@palabra = palabra
		longitud = @palabra.length
		longitud.times do
			@secuencia = @secuencia + "_ "
		end
		@secuencia = @secuencia.strip
		return @secuencia
	end

	def adivinar(letra)
		posicion = 0
		aciertos = 0

		@palabra.length.times do
			if @palabra[posicion] == letra
				@secuencia[posicion*2] = letra
				aciertos = aciertos + 1
			end
			posicion = posicion + 1
		end
 
		if aciertos == 0
			@intentos = @intentos + 1						
		end

		if @intentos >= 6
			@mensaje_final = "Perdiste"
		end
	end
end
