Feature: Transferências 

    Como usuário do sistema
    Quero realizar a consulta de tranferências
    Para acessar funcionalidades de transferências

Scenario: Transferências Pix com chave válida e saldo válido
   Given que o usuário está na página de transferências pix
   And seleciona uma chave válida 
   And confirma saldo válido
   And confirma a transferência
   Then a trasnferência deve ser realizada
   And deve exibir uma mensagem, informando que a tranferência foi realizada

Scenario: Transferência Pix com chave inválida
   Given que o usuário está na página de trasnferências Pix
   And e seleciona uma chave inválida
   Then a transferência não deve ser realizada
   And deve exibir uma mensagem de erro, informando que a chave é inválida

Scenario: Transferência Pix com chave válida e saldo insuficiente
   Given que o usuário está na página de transferências pix
   And seleciona uma chave válida
   And possui saldo insuficiente
   Then a transferência não deve ser realizada
   And deve exibir uma mensagem, informando que o saldo está insuficiente

Scenario: Transferências via TED com conta válida e saldo válido
   Given que o usuário está na página de transferências via ted
   And seleciona uma conta válida 
   And confirma o saldo válido
   And confirma a transferência
   Then a tranferência deve ser realizada
   And deve exibir uma mensagem, informando que a trasnferêcia foi realizada

Scenario: Transferências via TED com conta válida e saldo insuficiente
   Given que o usuário está na página de transferências via ted
   And seleciona uma conta válida 
   And possui saldo insuficiente
   Then a tranferência não deve ser realizada
   And deve exibir uma mensagem de erro, informando que o saldo está insuficiente

Scenario: Transferência via TED com conta inválida
   Given que o usuário está na página de trasnferências via ted
   And e seleciona uma conta inválida
   Then a transferência não deve ser realizada
   And deve exibir uma mensagem de erro, informando que a conta é inválida
