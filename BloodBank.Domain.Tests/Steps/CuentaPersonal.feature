Feature: Como personal anota la donacion de los pacientes

Scenario: Paciente deposita sangre y es anotado exitosamente
	Given la nueva cuenta numero 12345
	When deposito 10
	Then el saldo nuevo deberia ser 10

Scenario: Paciente desiste del sistema y es correcto
	Given la nueva cuenta numero 12345
    And con saldo 10
	When retiro 10
	Then el saldo nuevo deberia ser 0

Scenario: Personal cambia los permisos de otro usuario y es incorrecto
	Given la nueva cuenta numero 12345
    And con saldo 10
	When retiro -10
	Then deberia ser error
