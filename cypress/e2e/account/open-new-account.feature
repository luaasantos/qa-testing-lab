Feature: Open New Account

    Como usuário do sistema
    Quero visualizar a tela de Open New Account
    Para abrir uma nova conta

Scenario: Criar nova conta
    Given que o usuário está logado no ParaBank
    When clica no botão Open New Account
    Then deve ser redirecionado para a página de Open New Account
    And exibir os dados para abertura de nova conta


Scenario: Validar criação
    Given que o usuário está logado no ParaBank
    When clica no botão Open New Account
    Then deve visualizar os dados para abertura de conta
    And deve selecionar o tipo de conta 
    And deve clicar no botão de Oppen New Account
    And deve ser redirecionado para a página de Account Opened
    And deve ser exibido uma mensagem de conta nova criada

Scenario: Validar ID da conta
    Given que o usuário está logado no ParaBank
    When clica no botão Open New Account
    Then deve visualizar os dados para abertura de conta
    And deve selecionar o tipo de conta 
    And deve clicar no botão de Oppen New Account
    And deve ser redirecionado para a página de Account Opened
    And deve ser exibido uma mensagem de conta nova criada
    And deve ser exibido um id da conta
    And deve clicar no id da conta
    And deve ser redirecionado para a página de Details Account e Account Activity
    And deve ser exibido os detalhes da conta