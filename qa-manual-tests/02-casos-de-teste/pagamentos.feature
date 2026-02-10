Feature: Pagamentos

    Como um usuário do sistema
    Quero realizar pagamentos na aplicação
    Para manter os boletos em dia

Scenario: Pagamentos de boleto via leitor com código válido e saldo válido
   Given que o usuário está na página de boleto
   And lê um código de barras via leitor
   And possui saldo válido
   And confirma o pagamento
   Then o pagamento do boleto deve ser realizado
   And deve exibir uma mensagem, informando que o pagamento foi realizado

Scenario: Pagamentos de boleto via leitor com código inválido
   Given que o usuário está na página de boleto
   And lê um código de barras via leitor inválido
   Then o pagamento do boleto não deve ser realizado
   And deve exibir uma mensagem de erro, informando que o código está inválido

Scenario: Pagamentos de boleto via leitor com codigo válido e saldo insuficiente
   Given que o usuário está na página de boleto
   And lê um código de barras via leitor válido
   And possui saldo insuficiente
   Then o pagamento do boleto não deve ser realizado
   And deve exibir uma mensagem, informando que o saldo é insuficiente

Scenario: Pagamentos de boleto digitar codigo de barras válido e saldo válido
    Given que o usuário está na página de boleto
   And digita um código de barras 
   And possui saldo válido
   And confirma o pagamento
   Then o pagamento do boleto deve ser realizado
   And deve exibir uma mensagem, informando que o pagamento foi realizado

Scenario: Pagamentos de boleto digitar código de barras com código inválido
   Given que o usuário está na página de boleto
   And digita um código de barras inválido
   Then o pagamento do boleto não deve ser realizado
   And deve exibir uma mensagem de erro, informando que o código está inválido

Scenario: Pagamentos de boleto digitar código com codigo válido e saldo insuficiente
   Given que o usuário está na página de boleto
   And digita um código de barras válido
   And possui saldo insuficiente
   Then o pagamento do boleto não deve ser realizado
   And deve exibir uma mensagem, informando que o saldo é insuficiente

Scenario: Pagamentos Qr Code válido e saldo válido







Scenario: Pagamentos Pix copia e cola 



Scenario: Pagamento via Pix Automático



Scenario: Pagamento via Débito Automático 
