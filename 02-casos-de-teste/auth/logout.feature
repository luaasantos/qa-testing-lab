Feature: Logout de usuário

    Como um usuario 
    Quero realizar Logout no sistema


Scenario: Logout com sucesso
    Given que o usuário está autenticado no Parabank
    And no menu de serviços "Account Services"
    When seleciona "Log Out"
    Then deve ser deslogado retornar para a página de "Log In"