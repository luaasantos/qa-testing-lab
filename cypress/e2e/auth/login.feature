Feature: Login de usuario

    Como um usuario do sistema
    Quero realizar login na aplicação 
    Para acessar funcionalidade restritas com segurança

Scenario: Login realizado com sucesso com credenciais válidas
    Given que o usuario está na página de login do ParaBank
    When informa um usuário "valido"
    And informa uma senha "valida"
    And clica no botão "Log In"
    Then deve visualizar a página Accounts
    And redirecionar para a página inicial

@bug
Scenario: Login com senha inválida
    Given que o usuario está na página de login do ParaBank
    When informa um usuário "valido"
    And informa uma senha "invalida"
    And clica no botão "Log In"
    Then deve visualizar mensagem de erro de autenticação

@bug
Scenario: Login com usuário inexistente
    Given que o usuario está na página de login do ParaBank
    When informa um usuário "invalido"
    And informa uma senha "valida"
    And clica no botão "Log In"
    Then deve visualizar mensagem de erro de autenticação

Scenario: Login com campos vazios
    Given que o usuario está na página de login do ParaBank
    When clica no botão "Log In" 
    Then deve visualizar mensagem de erro de campos obrigatórios

@bug
Scenario: Login somente com usuário
   Given que o usuário está na página de login do ParaBank
   When informa um usuário "invalido"
   And clica no botão "Log In"
   Then deve visualizar mensagem de erro de campos obrigatórios

@bug
Scenario: Login somente com a senha
   Given que o usuário está na página de login do ParaBank
   When informa uma senha "valida"
   And clica no botão "Log In"
   Then deve visualizar mensagem de erro de campos obrigatórios
