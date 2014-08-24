Feature: Configurar Juego

	Scenario: Pantalla para seleccionar modo de juego
	Given I open the web app
		And I fill "usuario" with "David"
		And I press "Ingresar"
	Then I should see "Seleccionar Modo Juego"

	Scenario: Verificar opcion forever alone
	Given I open the web app
		And I fill "usuario" with "David"
		And I press "Ingresar"
		And I select "Forever Alone"
		And I press "Jugar"
	Then I should see "AHorcaTDD"
