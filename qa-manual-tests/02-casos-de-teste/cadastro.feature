Feature: Cadastro de usuario

    Como usuário do sistema
    Quero realizar o cadastro na aplicação
    Para acessar funcionalidades restritas 

Scenario: Cadastro com credenciais válidas
    Given que o usuário está na página de cadastro
    When informa um CPF válido
    And informa um e-mail válido
    And informa um telefone válido
    And informa uma senha válida
    And aceita os termos de uso
    Then o sistema deve criar a conta com sucesso 
    And exibir mensagem de conta criada 

Scenario: Cadastro com CPF inválido
    Given que o usuário está na página de cadastro
    When informa um CPF inválido
    And informa um e-mail válido
    And informa um telefone válido
    And informa uma senha válida
    And aceita os termos de uso
    Then o sistema não deve criar a conta 
    And exibir mensagem de erro, informando que o campo CPF está inválido

Scenario: Cadastro sem preenchimento do campo CPF
    Given que o usuário está na página de cadastro
    When não informa o CPF 
    And informa os demais dados válidos
    And aceita os termos de uso
    Then o sistema não deve seguir com o cadastro
    And exibr mensagem de erro informado que o CPF é obrigatório

Scenario: Cadastro com senha inválida
    Given que o usuário está na página de cadastro
    When informa um CPF válido
    And informa um telefone válido
    And informa uma senha inválida
    And aceita os termos de uso
    Then o sistema não deve criar a conta
    And exibir uma mensagem de erro, informando que o campo senha está inválido

Scenario: Cadastro com telefone inválido
    Given que o usuário está na página de cadastro
    When informa um CPF válido
    And informa um e-mail válido
    And informa um telefone inválido
    And informa uma senha válida
    And aceita os termos de uso
    Then o sistema não deve criar a conta
    And exibir uma mensagem de erro, informando que o  campo telefone está inválido

Scenario: Cadastro com caixa de termos de uso não marcado
    Given que o usuário está na página de cadastro
    When informa um CPF válido
    And informa um e-mail válido
    And informa um telefone inválido
    And informa uma senha válida
    And não aceita os termos de uso
    Then o sistema não deve criar a conta
    And exibir uma mensagem de erro, informando que os termos de uso devem ser aceitos

Scenario: Cadastro de usuario com CPF já cadastrado
    Given que o usuário está na página de cadastro
    When informa um CPF já cadastrado
    And informa um e-mail válido
    And informa um telefone inválido
    And informa uma senha válida
    And aceita os termos de uso
    Then o sistema não deve criar a conta
    And exibir uma mensagem de erro ao cadastrar, informando que o usuario já existe no sistema
    And orientarr a recuperação de senha