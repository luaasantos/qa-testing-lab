Feature: Cartões 

    Como usuário do sistema
    Quero realizar a consulta de cartões
    Para acessar funcionalidades cartões

Scenario: Consultar a fatura 
   Given que o usuário está na página de cartões 
   And seleciona consultar a fatura do cartão
   Then deve exibir as informações da fatura

Scenario: Parcelar a fatura
   Given que o usuário está na página de cartões 
   And seleciona a opção de parcelar fatura
   And seleciona as parcelas
   And confirma o contrato de parcelamento
   Then deve realizar o parcelamento da fatura
   And deve exibir uma mensagem, informando que a fatura foi parcelada

Scenario: Pagar a fatura com saldo válido
   Given que o usuário está na página de cartões
   And seleciona pagar a fatura do cartão
   And seleciona saldo válido
   And confirma o pagamento 
   Then deve realizar o pagamento da fatura
   And deve exibir uma mensagem, informando que o pagamento foi realizado

Scenario: Pagar a fatura com saldo unsificiente
   Given que o usuário está na página de cartões
   And seleciona pagar a fatura do cartão
   And possui saldo insuficiente
   Then não deve realizar o pagamento da fatura
   And deve exibir uma mensagem de erro, informando que o saldo é insuficiente para pagamento