Feature: Logout do usuario

    Como um usuario do sistema
    Quero realizar logout na aplicação 

Scenario: Logout com sucesso
Given que o usuário está logado no ParaBank
When clica no botão Log Out
Then deve ser redirecionado para a página de login