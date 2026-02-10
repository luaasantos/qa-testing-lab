Feature: Login de usuario

    Como um usuario do sistema
    Quero realizar login na aplicação 
    Para acessar funcionalidade restritas com segurança

Scenario: Login realizado com sucesso com credenciais válidas
    Given que o usuario está na página de login 
    When Informa um CPF válido
    And informa uma senha válida
    An clica no botão "Entrar"
    Then o sistema deve autenticar o usuario com sucesso
    And redirecionar para a página inicial

Scenario: Tentativa de login com o CPF não cadastrado
    Given que o usuário está na página de login
    When informa um CPF não cadastrado
    And informa uma senha válida
    And clica no botão "Entrar"
    Then o sistema deve exibir uma mensagem de erro, informando que o usuário não foi encontrado

Scenario: Tentativa de login sem preencher CPF
    Given que o usuário está na página de login
    When não informa o CPF
    And informa uma senha válida
    And clica no botão "Entrar"
    Then o sistema deve exibir uma mensagem de erro, informando que o campo do CPF não foi preenchido

Scenario: Tentativa de login sem preencher senha
    Given que o usuário está na página de login
    When informa um CPF válido
    And não informa a senha
    And clica no botão "Entrar"
    Then o sistema deve exibir uma mensagem de erro, informando que o campo senha não foi preenchido

Scenario: Tentativa de login após múltiplas falhas consecutivas
    Given que o usuário realizou várias tentativas de login com senha incorreta
    When tenta realizar uma nova tentativa de login
    Then o sistema deve bloquear temporiamente o acesso
    And exibir uma mensagem informando o bloqueio por segurança