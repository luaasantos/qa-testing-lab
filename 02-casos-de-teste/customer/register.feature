Feature: Cadastro de usuario

    Como usuário do sistema
    Quero realizar o cadastro na aplicação
    Para acessar funcionalidades restritas 

Scenario: Cadastro com dados válidos
    Given que o usuário está na página de cadastro
    When informa um CPF válido não cadastrado
    And informa um e-mail válido
    And informa um telefone válido
    And informa uma senha válida conforme política de segurança
    And aceita os termos de uso
    And confirma os envio do formulário
    Then o sistema deve criar a conta com sucesso 
    And persistir os adados do usuário na base
    And iniciar sessão autenticada
    And redirecionar para o dashboard
    And exibir mensagem de conta criada com sucesso

Scenario: Cadastro com senha fora da política de segurança
   Given que o usuário está na página de cadastro
   When informa senha não atende aos critérios mínimos
   And preenche os demais campos com dados válidos
   And aceita os termos de uso
   Then o sistema não deve criar a conta
   And deve exibir mensagem, iformando os critérios exigidos

Scenario: Cadastro com CPF inválido
    Given que o usuário está na página de cadastro
    When informa um CPF inválido
    And preenche os demais campos com dados válidos
    And aceita os termos de uso
    And confirma o envio do formulário
    Then o sistema não deve criar a conta 
    And não deve persistir dados do usuário
    And exibir mensagem, informando que o CPF é inválido

Scenario: Cadastro sem preenchimento do campo CPF
    Given que o usuário está na página de cadastro
    When não informa o CPF 
    And informa os demais dados válidos
    And aceita os termos de uso
    Then o sistema não deve seguir com o cadastro
    And exibr mensagem de erro informado que o CPF é obrigatório

Scenario: Impedir cadastro sem CPF
   Given que o usuário está na página de cadastro
   When não informa o CPF
   And preencha os demais campos válidos 
   And aceita os termos de uso
   And solicita o cadastro
   Then o sistema não deve persisitir o usuário
   And deve informaar que o CPF é obrigatório

Scenario: Cadastro com telefone inválido
    Given que o usuário está na página de cadastro
    When informa um telefone inválido
    And preenche os demai campos válidos
    And aceita os termos de uso
    And solicita o cadastro
    Then o sistema não deve persistir o usuário
    And exibir uma mensagem, informando que o  campo telefone é inválido

Scenario: Cadastro com caixa de termos de uso não marcado
    Given que o usuário está na página de cadastro
    When preenche todos os campos com dados válidos
    And não aceita os termos de uso
    And confirma o envio de formulário
    Then o sistema não deve criar a conta
    And não dve persistir dados do usuário
    And exibir uma mensagem, informando que os termos são obrigatórios

Scenario: Cadastro de usuario com CPF já cadastrado
    Given que já existe um usuário cadastro com determinado CPF
    And o usuário está na página de cadastro
    When informa o mesmo CPF já cadastrado
    And preenche os demais campos com dados válidos
    And aceita os termos de uso
    And confirma o envio de formulário
    Then o sistema não deve criar a conta
    And exibir uma mensagem, informando que o usuário já existe
    And orientar para recuperação de senha

Scenario: Tentativa de envio duplo do formulário
   Given que o usúario está na página de cadastro
   When preenche todos os campos com dados válidos
   And aceita os termos de uso
   And realiza múltiplos liques no botão de cadastro
   Then o sistema deve criar apenas um único registro
   And não deve duplicar conta na base

Scenario: Remover espaços extras no cadastro
   Given que o usuário es´ta na página de cadastro
   When informa "   emaisl@email,com   " no campo e-mail
   And preenche os demais campos válidos
   And aceita os termos de uso
   And solicita o cadastro
   Then o sistema deve normalizar os dados
   And criar a conta com sucesso

Scenario: CPF com pontuação
   Given qe o usuário está na página de cadastro
   When informa CPF formatado com pontos e traço
   And preenche os demais campos válidos
   And aceita os termos de uso
   And solicita o cadastro
   Then o sistema deve aceitar o formato
   And persistir apenas números

Scenario: Impedir cadastro com e-mail já existente
   Given que já existe conta cadastrada com o e-mail informado
   When o usuário tenta cadastrar nova conta com o mesmo e-mail
   Then o sistema deve impedir o cadastro

Scenario: E-mail não deve diferenciar maiúsculas 
   Given que existe conta com email@email.com
   When tenta cadastrar EMAIL@email.com 
   Then o sistema deve reconhecer como duplicado