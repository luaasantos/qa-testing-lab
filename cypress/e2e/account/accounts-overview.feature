Feature: Account Overview

    Como usuário do sistema
    Quero visualizar a tela de Account Overview
    Para acessar funcionalidades da conta

Scenario: Consultar contas existentes
   Given que o usuário está logado no ParaBank
   When clica no botão Account Overview
   Then deve ser redirecionado para a página de Account Overview
   And exibir os dados das contas existentes

Scenario: Consultar detalhes das contas
   Given que o usuário está logado no ParaBank
   And está na página de Account Overview
   When clica no botão para ver detalhes das contas
   Then deve redirecionar o usuário para a página de Account Details e Account Activity
   And deve exibir os detalhes da conta

Scenario: Validar o saldo exibido
   Given  que o usuário está logado no ParaBank
   And está na página de Account Overview
   And quer visualizar seu saldo da conta
   Then deve exibir o saldo da conta do usuário



