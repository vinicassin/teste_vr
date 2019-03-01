#language: pt

Funcionalidade: Desejo realizar a pesquisa de um cep valido e um invalido para o teste da VR.

Cenario: Realizar a pesquisa de um cep valido e apresentar o codigo do IBGE no retorno no terminal
  Dado pesquiso um "cep_valido"
  Entao valido que o codigo do IBGE e apresentado com sucesso

Cenario: Realizar a pesquisa de um cep invalido e validar a mensagem de retorno no terminal
  Dado pesquiso um "cep_invalido"
  Entao valido que o retorno e apresentado um erro de cep invalido
