Feature: Produtos Pix

    Como usuário do sistema
    Quero realizar a consulta de produtos pix
    Para acessar funcionalidades dos produtos pix


Scenario: Fazer Pix via contato existente com saldo válido
    Given que o usuário está na página do pix
    When seleciona um contato da sua lista 
    And seleciona um saldo válido
    And confirma a transação 
    Then o pix deve ser realizado para o contato
    And deve exibir uma mensagem, informando que o pix foi confirmado

Scenario: Fazer Pix via contato existente com saldo insuficiente
   Given que o usuário está na página do pix
   When seleciona um contato da sua lista
   And não possui saldo suficiente
   Then o pix não deve ser realizado para o contato
   And deve exibir uma mensagem, informando que o saldo é insuficiente

Scenario: Fazer Pix via contato não existente
   Given que o usuário está na página do pix
   When seleciona um contato não existente
   Then o pix não deve ser realizado
   And deve exibir mensagem de erro, informando que o contato não é válido

Scenario: Fazer Pix com a chave válida e saldo válido
   Given que o usuário está na página do pix
   When seleciona uma chave pix válida 
   And seleciona um saldo válido
   And confirma a transação
   Then o pix deve ser realizado para a chave selecionada
   And deve exibir uma mensagem, informando que o pix foi confirmado

Scenario: Fazer Pix com a chave válida e saldo insuficiente
   Given que o usuário está na página do pix
   When seleciona uma chave pix válida
   And não possui saldo suficiente 
   Then o pix não deve ser realizado
   And deve exibir mensagem de erro, informando que o saldo é insuficiente

Scenario: Fazer Pix com chave inválida
   Given que o usuario está na página do pix
   When seleciona uma chave pix inválida
   Then o pix não deve ser realizado
   And deve exibir uma mensagem de erro, informando que a chave pix é inválida

Scenario: Pix Cobrança via Qr code válido e saldo válido
   Given que o usuário está na página do pix
   When lê um qr code pix válido
   And seleciona um saldo válido
   And confirma a transação
   Then o qr code pix deve ser realizado
   And deve exibir uma mensagem, informando que o qr code pix foi pago

Scenario: Pix Cobrança via Qr code válido e saldo inválido
   Given que o usuário está na página do pix
   When lê um qr code pix válido
   And não possui saldo suficiente
   Then o pix não deve ser realizado
   And deve exibir uma mensagem de erro, informando que o saldo é insuficiente

Scenario: Pix Cobrança via Qr code inválido
   Given que o usuário está na página do pix
   When lê um qr code pix inválido
   Then o qr code pix não deve ser realizado
   And deve exibir uma mensagem de erro, informando que o qr code pix está inválido

Scenario: Pix Saque e Pix Troco válido com saldo válido
   Given que o usuário está na página do pix
   When lê um qr code pix saque ou compra válido
   And seleciona um saldo válido
   Then o saque ou a  compra deve ser realizado
   And deve exibir uma mensagem, informando para retirar o dinheiro

Scenario: Pix Saque e Pix Troco válido com saldo insuficiente
   Given que o usuário está na página do pix
   When lê um qr code pix saque ou compra válido
   And não possui saldo suficiente
   Then o saque pix ou compra não deve ser realizado
   And deve exibir uma mensagem de erro, informando saldo insuficiente para saque

Scenario: Minhas Chaves
   Given que o usuário está na página do pix
   When consulta as chaves pix cadastradas em sua conta
   Then as chaves pix cadastradas devem ser exibidas

Scenario: Pagar via Pix Automático qr code válido e saldo válido
   Given que o usuário está na página do pix
   When lê um qr code pix automático válido
   And confirma a transação 
   Then o qr code pix automático deve ser realizado
   And deve exibir uma mensagem, informando que o qr code pix automático foi confirmado

Scenario: Pagar via Pix Automático qr code válido e saldo insuficiente
   Given que o usuário está na página do pix
   When le um qr code pix automático válido
   And não possui saldo suficiente
   Then o qr code pix automático não deve ser realizado
   And deve exibir uma mensagem de erro, informando saldo insuficiente


Scenario: Pagar via Pix Automático qr code inválido
  Given que o usuário está na página do pix
  When lê um qr code pix automático inválido
  Then o qr code pix não deve ser realizado
  And deve exibir uma mensagem de erro, informando que o qr code pix automático está inválido


Scenario: Pagar via Pix Automático copia e cola com saldo válido
   Given que o usuário está na página do pix
   When copia e cola um pix automático
   And seleciona um saldo válido
   And confirma a transação
   Then o pix copia e cola deve ser realizado
   And exibir uma mensagem, informando que o pix copia e cola automático foi confirmado

Scenario: Pagar via Pix Automático copia e cola com saldo insuficiente
   Given que o usuário está na página do pix
   When copia e cola um pix automático
   And não possui saldo suficiente
   Then o pix copia e cola automático não deve ser realizado
   And deve exibir uma mensagem de erro, informando saldo insuficiente