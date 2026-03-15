Feature: Saque de saldo

    Como usuário do sistema
    Quero acessar o saque
    Para realizar o saque do saldo

Scenario: Saque Digital com qr code válido e saldo válido
   Given que o usuário está na página de saque digital
   And lê um qr code de saque digital válido
   And possui saldo válido
   And confirma o saque
   Then o saque deve ser realizado
   And deve exibir uma mensagem, informando para retirar o dinheiro

Scenario: Saque Digital com qr code válido e saldo insuficiente
   Given que o usuário está na página de saque digital
   And lê um qr code de saque digital válido
   And possui saldo insuficiente
   Then o saque não deve ser realizado
   And deve exibir uma mensagem de erro, informando que o saldo está insuficiente

Scenario: Saque Digital com qr code inválido
   Given que o usuário está na página de saque digital
   And lê um qr code de saque digital inválido
   Then o saque não deve ser realizado
   And deve exibir uma mensagem de, informando que o qr code está inválido

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