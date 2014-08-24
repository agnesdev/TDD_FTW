require "./lib/jugar"

describe Jugar do
	before do
		@jugar = Jugar.new
	end
	it "Si la palbra es HOLA la secuencia debe ser _ _ _ _" do
		@jugar.iniciar_secuencia("HOLA")
		expect(@jugar.secuencia).to eq("_ _ _ _")
	end


	it "Si la palbra es POLLO la secuencia debe ser _ _ _ _ _" do
		@jugar.iniciar_secuencia("POLLO")
		expect(@jugar.secuencia).to eq("_ _ _ _ _")
	end

	it "Si la palabra es HOLA y se ingresa la letra A, la secuencia debe ser _ _ _ A" do
		@jugar.iniciar_secuencia("HOLA")
		@jugar.adivinar("A")
		expect(@jugar.secuencia).to eq("_ _ _ A")
	end

	it "Si la palabra es POLLO y se ingresa la letra L, la secuencia debe ser _ _ L L _" do
		@jugar.iniciar_secuencia("POLLO")
		@jugar.adivinar("L")
		expect(@jugar.secuencia).to eq("_ _ L L _")
	end


	it "al ingresar 6 letras incorrectas, debemos ver que perdimos" do
		@jugar.iniciar_secuencia("HOLA")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		expect(@jugar.mensaje_final).to eq("Perdiste")		
	end

	it "al ingresar 1 correcta y 3 incorrectas, debemos ver que perdimos" do
		@jugar.iniciar_secuencia("HOLA")
		@jugar.adivinar("H")
		expect(@jugar.intentos).to eq(0)		
	end

	it "al ingresar 1 correcta y 3 incorrectas, debemos ver que perdimos" do
		@jugar.iniciar_secuencia("HOLA")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		@jugar.adivinar("H")
		@jugar.adivinar("F")
		expect(@jugar.intentos).to eq(3)		
	end

	it "al ingresar 2 letras correctas A y H, 6 letras incorrectas F y la palabra es HOLA debemos ver que perdimos" do
		@jugar.iniciar_secuencia("HOLA")
		@jugar.adivinar("H")
		@jugar.adivinar("O")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		@jugar.adivinar("F")
		expect(@jugar.mensaje_final).to eq("Perdiste")		
	end

end
