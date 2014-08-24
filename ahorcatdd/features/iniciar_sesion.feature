Feature: Iniciar sesion

Scenario: Mostrar pantalla inicial 
Given I open the web app
Then I should see "Iniciar sesion"


Scenario: Ingresar usuario
Given I open the web app
And I fill "usuario" with "David"
And I press "Ingresar"
Then I should see "Bienvenido David"
