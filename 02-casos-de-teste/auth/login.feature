Feature: Login de usuario

    Como um usuario do sistema
    Quero realizar login na aplicação 
    Para acessar funcionalidade restritas com segurança

Scenario: Login realizado com sucesso com credenciais válidas
    Given que o usuario está na página de login do ParaBank
    When Informa um usuário válido
    And informa uma senha válida
    And clica no botão "Log In"
    Then deve visualizar a página "Accounts"
    And redirecionar para a página inicial

Scenario: Login com senha inválida
    Given que o usuario está na página de login do ParaBank
    When Informa um usuário válido
    And informa uma senha iválida
    And clica no botão "Log In"
    Then deve visualizar mensagem de erro

Scenario: Login om usuário inexistentee
    Given que o usuario está na página de login do ParaBank
    When Informa um usuário inexistente
    And informa uma senha válida
    And clica no botão "Log In"
    Then deve visualizar uma mensagem de erro

Scenario: Login com campos vazios
    Given que o usuario está na página de login do ParaBank
    When clica no botão "Log In" sem preencher os campos
    Then deve visuzlizar mensagem de erro

Scenario: Login somente com usuário
   Given que o usuário está na página de login do ParaBank
   When ele informa apenas o usuário
   And clica no botão "Log In"
   Then deve visualizar mensagem de erro

Scenario: Login somente com a senha
   Given que o usuário está na página de login do ParaBank
   When ele informa apenas a senha
   And clica no botão "Log In"
   Then deve visualizar mensagem de erro
