Feature: Central de boletos

    Como usuário do sistema
    Quero realiza a consulta da central de boletos
    Para acessar funcionalidades da central de boletos


Scenario: Consultar boletos a pagar
  Given que o usuário está na página de consulta de boletos
  And seleciona os filtros
  And confirma a consulta
  Then deve exibir os boletos como resultado
  And deve exibir uma mensagem, informando que a consulta foi realizada

Scenario: Consultar boletos vencidos 
   Given que o usuário está na página de consulta de boletos
   And seleciona boletos vencidos
   And confirma a consulta
   Then deve exibir os boletos vencidos como resultado
   And deve exibir uma mensagem, informando que a consulta foi realizada

Scenario: Consultar boletos ocultos
   Given que o usuário está na página de consulta de boletos
   And seleciona boletos ocultas
   And cofirma a consulta
   Then deve exibir os boletos ocultos como resultado
   And deve exibir uma mensagem, informando que a consulta foi realizada

Scenario: Pagar boletos com saldo válido
   Given que o usuário está na página de pagar boletos
   And seleciona os boletos
   And seleciona saldo válido 
   And confirma o pagamento
   Then deve realizar o pagamento do boleto
   And deve exibir uma mensagem, informando que o pagamento foi realizado

Scenario: Pagar boletos com saldo insuficiente
   Given que o usuário está na página de pagar boletos
   And seleciona os boletos
   And possui saldo insuficiente
   Then não deve realizar o pagamento do boleto
   And deve exibir uma mensagem de erro, informando que o saldo é insuficiente

Scenario: Pagar boletos inválido
   Given que o usuário está na página de pagar boletos
   And seleciona um boleto inválido
   Then não deve realizar o pagamento do boleto
   And deve exibir uma mensagem de erro, informando que o boleto é inválido