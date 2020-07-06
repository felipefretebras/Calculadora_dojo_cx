# language: pt

Funcionalidade: Calculadora
	Eu como usuário
	Quero efetuar cálculos
	Para visualizar o resultado das operações

Cenario: Dividir números
  Dado que estou na calculadora
  Quando efetuo a divisão do número 8 com o 4
  Entao visualizo 2 como o resultado da divisão

Cenario: Divisão com erro
  Dado que estou na calculadora
  Quando efetuo a divisão do número 5 com o 0
  Entao valido o erro "Impos. dividir por 0"
  