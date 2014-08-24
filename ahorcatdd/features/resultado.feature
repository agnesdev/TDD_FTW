Feature: Resultado

	Scenario: Mostrar pagina de resultado
	Given I open the web app
		And I fill "usuario" with "Juan Carlos"
		And I press "Ingresar"
		And I select "Forever Alone"
		And I press "Jugar"
    And I click on "resultado"
	Then I should see "Resultado"
		And I should see "Ganaste Juan Carlos"
