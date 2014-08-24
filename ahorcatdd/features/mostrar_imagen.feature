Feature: Mostrar imagen de ahorcado cuando tiene intents fallidos

	Scenario: Al iniciar el juego, se muestra la imagen 0.png
	Given I open the web app
		And I fill "usuario" with "David"
		And I press "Ingresar"
		And I select "Forever Alone"
		And I press "Jugar"
	Then the "<img src='img/0.png'>" image should load  

	Scenario: Cuando comete 2 errores, se muestra la imagen 2.png
	Given I open the web app
  	And I open jugar and I send "HOLA"
 	When I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
	Then the "<img src='img/2.png'>" image should load 

	Scenario: Cuando comete 6 errores, se muestra la imagen 6.png
	Given I open the web app
  	And I open jugar and I send "HOLA"
 	When I fill "letra" with "F"
		And I press "jugar"
		And I fill "letra" with "F"
	 	And I press "jugar"
	When I fill "letra" with "F"
	 	And I press "jugar"
		And I fill "letra" with "F"
		And I press "jugar"
	When I fill "letra" with "F"
		And I press "jugar"
		And I fill "letra" with "F"
		And I press "jugar"
	Then the "<img src='img/6.png'>" image should load 
