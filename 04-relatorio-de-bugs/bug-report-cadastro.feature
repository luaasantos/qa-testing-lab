Bug 01 — Cadastro duplicado ao clicar múltiplas vezes

Título
Cadastro cria múltiplas contas ao clicar repetidamente no botão "Cadastrar"

Ambiente
Ambiente: Homologação

Navegador: Chrome 122

Sistema: Windows 11

Tela: Desktop

Pré-condição
Usuário não cadastrado previamente no sistema.

Passos para reproduzir
- Acessar a página de cadastro
- Preencher todos os campos com dados válidos
- Clicar rapidamente no botão "Cadastrar" várias vezes antes do retorno da API

Resultado esperado
O sistema deve processar apenas uma requisição de cadastro e criar somente uma conta.
Resultado obtido
O sistema cria múltiplas contas com os mesmos dados, gerando duplicidade de usuário na base.

Evidência
Lista de usuários exibindo duplicidade de CPF/e-mail após envio múltiplo.

Severidade
Alta

Prioridade
Alta

Impacto no usuário
O usuário pode criar contas duplicadas sem perceber, gerando inconsistência de dados, problemas de autenticação e riscos financeiros.

Possível causa (hipótese QA)
Ausência de bloqueio do botão após primeiro clique ou falta de controle de idempotência na API de cadastro.