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
   And deve exibir uma mensagem de erro, informando que o código é inválido para pagamento

Scenario: Pagamentos de boleto digitar código com codigo válido e saldo insuficiente
   Given que o usuário está na página de boleto
   And digita um código de barras válido
   And possui saldo insuficiente
   Then o pagamento do boleto não deve ser realizado
   And deve exibir uma mensagem, informando que o saldo é insuficiente para pagamento

Scenario: Pagamentos Qr Code válido e saldo válido
   Given que o usuário está na página de boleto
   And lê um qr code válido
   And confirma um saldo válido
   And confirma o pagamento do qr code
   Then o pagamento do qr code deve ser realizado
   And deve exibir uma mensagem, informando que o pagamento foi realizado

Scenario: Pagamentos Qr Code inválido 
   Given que o usuário está na página de boleto
   And lê um qr code inválido
   Then o pagamento do qr code não deve ser realizado
   And deve exibir uma mensagem de erro, informando que o qr code é inválido para pagamento

Scenario: Pagamentos Qr Code válido e saldo insuficiente
   Given que o usuário está na página de boleto
   And lê um qr code válido
   And possui um saldo insuficiente
   Then o pagamento do qr code não deve ser realizado
   And deve exibir uma mensagem de erro, informando que o saldo é insuficiente para pagamento

Scenario: Pagamentos Pix copia e cola código válido e saldo válido
   Given que o usuário está na página de boleto
   And digita um pix copia e cola válido
   And confirma um saldo válido
   And confirma o pagamento do pix copia e cola
   Then o pagamento do qr code deve ser realizado
   And deve exibir uma mensagem, informando que o pagamento foi realizado

Scenario: Pagamentos Pix copia e cola código válido e saldo insuficiente
   Given que o usuário está na página de boleto
   And digita um pix copia e cola válido
   And não possui um saldo suficiente
   Then o pagamento do pix copia e cola não deve ser realizado
   And deve exibir uma mensagem de erro, informando que o saldo é insuficiente para pagamento


Scenario: Pagamentos Pix copia e cola código inválido
   Given que o usuário está na página de boleto
   And digita um pix copia e cola inválido
   Then o pagamento do pix copia e cola não deve ser realizado
   And deve exibir uma mensagem de erro, informando que o código é inválido para pagamento

Scenario: Pagamento via Pix Automático chave válida
   Given que o usuário está na página do pix automático
   And cadastra um pix automático
   And confirma o pagamento
   Then o pagamento deve ser realizado
   And deve exibir uma mensagem, informando que o pagamento foi realizado

Scenario: Pagamento via Pix Automático chave inválida
   Given que o usuário está na página do pix automático
   And cadastra um pix automático com a chae inválida
   Then o pagamento não deve ser realizado
   And deve exibir uma mensagem de erro, informando que a chave é inválida


Scenario: Pagamento via Pix Automático com saldo insuficiente
   Given que o usuário está na página do pix automático
   And cadastra um pix automático
   And possui um saldo insuficiente
   Then o pagamento deve não ser realizado
   And deve exibir uma mensagem de erro, informando que o saldo é insuficiente

Scenario: Pagamento via Débito Automático 
   Given que o usuário está na página de pagamento
   And cadastra um débito automático
   And aceita o contrato
   Then o pagamento deve ser cadastrado
   And deve exibir uma mensagem, informando que o débito será realizado de acordo com o cadastro
