require './lib/iniciar_sesion'

describe Iniciar_Sesion do

	before do 
		@sesion = Iniciar_Sesion.new
	end

	it "Mostrar pantalla inicial" do
		expect(@sesion.mensaje_inicial).to eq("Iniciar sesion")
	end
 
	it "Ingresar usuario David y ver mensaje Bienvenido David" do
		@sesion.iniciar_sesion("David")
		expect(@sesion.mensaje_bienvenida(1)).to eq("Bienvenido David")
	end	

	it "Mostrar una palabra con contenido" do
		expect(@sesion.obtener_palabra).not_to be_nil
	end
end

