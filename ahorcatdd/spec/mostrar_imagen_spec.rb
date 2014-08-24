require './lib/jugar'
describe Jugar do

	before do 
		@jugar = Jugar.new	
	end

	
	it "Al iniciar el juego, se muestra la imagen 0" do
		@jugar.iniciar_secuencia("POLLO")
		expect(@jugar.intentos).to eq(0)
	end

	it "Al mostrar 2 intentos fallidos, debemos ver la imagen 2" do
		@jugar.iniciar_secuencia("HOLA")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		expect(@jugar.intentos).to eq(2)		
	end

	it "Al adivinar 1 letra y tener 2 intentos fallidos, debemos ver la imagen 2" do
		@jugar.iniciar_secuencia("HOLA")
		@jugar.adivinar("H")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		expect(@jugar.intentos).to eq(2)		
	end

end
