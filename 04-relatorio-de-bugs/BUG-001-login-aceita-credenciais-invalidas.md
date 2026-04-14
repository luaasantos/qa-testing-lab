## BUG-001 - Login aceita credenciais inválidas

## Descrição
Durante a execução dos testes no fluxo de autenticação, foi identificado que o sistema permite o acesso á conta mesmo quando são informadas credenciais inválidas. 

O compotamento foi observado tanto para: 
- usuário inexistente
- senha inválida

Em ambos os casos, o sistema redireciona o usuário para a págin de overview, indicando autenticação bem-sucedida.

## Passos para reproduzir

## Cenário 1: Usuário inexistente
1. Acessar tela de login
2. Inserir usuário inexistente
3. Inserir qualquer senha 
4. Clicar em "Log In"

## Cenário 2: Senha inválida
1. Acessar tela de login
2. Inserir usuário válido
3. Inserir senha inválida
4. Clicar em "Log In"

## Resultado esperado
O sistema deveria exibir mensagem de erro e impedir login.

## Resultado atual
O sistema autentica o usuário e redireciona para a página de contas.

## Impacto
Esse comportamento compromete a validação de autenticaão e pode representar um risco de segurança, permitindo acesso indevido ao sistema.

## Severidade
Alta

## Tipo
Funcional/Segurança

## Evidências
- Execução de testes automatizados com Cypress
- Cenários modelados em Gherkin
- Redirecionamento para `overview´ após tentativa de login inválido

## Observação
O comportamento identificado pode estar relacionado ao ambiente de testes (mockado), porem foi tratado como insconsistência funcional para fins de validação de qualidade. 