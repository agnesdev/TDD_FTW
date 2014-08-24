Feature: Adivinar Letra

	Scenario: Mostrar tantas rayitas segun la extension de la palabra
		Given I open the web app
		And I open jugar and I send "HOLA"
		Then I should see "_ _ _ _"

 	Scenario: al ingresar letra L y luego P con palabra POLLO
		Given I open the web app
  	And I open jugar and I send "POLLO"
  	When I fill "letra" with "L"
  	And I press "jugar"
  	When I fill "letra" with "P"
  	And I press "jugar"
  	Then I should see "P _ L L _"

  Scenario: al ingresar 6 letras incorrectas, debemos ver que perdimos
  	Given I open the web app
  	And I open jugar and I send "HOLA"
  	When I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
  	Then I should see "Perdiste"

  Scenario: al ingresar 2 letras correctas A y H, 6 letras incorrectas F y la palabra es HOLA debemos ver que perdimos
    Given I open the web app
    And I open jugar and I send "HOLA"
    When I fill "letra" with "A"
    And I press "jugar"
    And I fill "letra" with "H"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    Then I should see "Perdiste"

  Scenario: al ingresar 2 letras correctas A y H, 6 letras incorrectas F y la palabra es POLLO debemos ver que perdimos
    Given I open the web app
    And I open jugar and I send "POLLO"
    When I fill "letra" with "P"
    And I press "jugar"
    And I fill "letra" with "L"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    Then I should see "Perdiste"
