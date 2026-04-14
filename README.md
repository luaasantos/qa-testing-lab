🧪 QA Testing Lab

Este repositório reúne estudos e práticas de Qualidade de Software, inicialmente focados em testes manuais, evoluindo gradualmente para automação de testes e organização de artefatos de QA.

O objetivo é demonstrar, na prática, como um QA organiza e executa atividades de validação de software, cobrindo desde a estratégia de testes até a automação de cenários críticos.

O projeto simula um ambiente próximo ao dia a dia de times de tecnologia, incluindo planejamento, execução, registro de bugs e evolução para testes automatizados.

---

💜 Sobre mim

Sou formada em Análise e Desenvolvimento de Sistemas, com experiência prévia como desenvolvedora e atuação prática em testes manuais de software, participando de rotinas de validação, homologação e suporte à implantação de sistemas.

Atuei em ambientes com metodologias ágeis, colaborando com times de desenvolvimento, produto e negócios, sempre com foco na entrega de software confiável e de qualidade.

Atualmente estou aprofundando meus conhecimentos em automação de testes, mantendo uma base sólida em testes manuais e estratégia de qualidade.

---

🧩 Contexto do sistema testado

Parte dos testes deste projeto utiliza o ParaBank, uma aplicação web bancária de demonstração amplamente utilizada para prática de testes.

Ela permite simular cenários reais de aplicações financeiras, como:

- Autenticação de usuários (login)
- Cadastro de contas
- Consulta de extratos
- Operações financeiras simuladas

Esses cenários permitem exercitar validações importantes como regras de negócio, fluxos críticos e comportamento do sistema.

«Nenhuma informação confidencial ou corporativa é utilizada neste projeto.»

---

🔍 Tipos de testes abordados

Neste repositório são exploradas diferentes abordagens de QA:

- Testes manuais funcionais
- Testes exploratórios
- Testes de regressão
- Validação de regras de negócio
- Registro e documentação de bugs
- Início de automação de testes End-to-End

---

🤖 Automação de Testes

Com a evolução do projeto, foi iniciada a automação de testes utilizando Cypress.

A automação começou pelos cenários mais críticos da aplicação, como o fluxo de login, servindo como base para expansão futura da cobertura de testes automatizados.

Essa etapa surgiu após minha participação em um bootcamp de automação de testes, onde tive contato com ferramentas modernas e práticas de QA Engineering.

A automação continuará evoluindo com novos cenários do sistema.

---

🚀 Como executar o projeto 

📌 Pré-requisitos

- Node.js instalado (versão 16 ou superior)
- Git instalado

📥 Clonar o repositório

git clone https://github.com/seu-usuario/seu-repo.git

cd nome-do-repo

📦 Instalar dependências

npm install

▶️ Executar os testes

Modo interativo (Cypress aberto)

npx cypress open

Modo headless (via terminal)

npx cypress run

📊 Executar script de coverage

npm run coverage

---

📂 Estrutura do repositório

O projeto está organizado para refletir um fluxo real de trabalho em QA:

qa-testing-lab
│
├── 01-plano-de-teste
├── 02-casos-de-teste
├── 03-testes-exploratorios
├── 04-relatorios-de-bugs
├── 05-checklists
│
├── cypress
│   ├── e2e
│   ├── fixtures
│   └── support
│
├── scripts
├── test-coverage
│
├── cypress.config.js
├── package.json
└── README.md

Essa estrutura permite separar claramente documentação de QA, execução de testes e automação.

---

🛠️ Stack e conhecimentos aplicados

Durante o desenvolvimento deste projeto foram aplicados conhecimentos como:

- Testes Manuais de Software
- Testes Exploratórios
- Design de Casos de Teste
- Registro e análise de bugs
- Cypress (Automação E2E)
- JavaScript
- Node.js
- Git e GitHub
- Metodologias Ágeis (Scrum / Kanban)

---

🚀 Evolução do projeto

Este repositório representa um laboratório de prática em QA, demonstrando a evolução natural de atividades de qualidade de software:

Testes Manuais
↓
Estruturação de documentação de QA
↓
Testes exploratórios e registro de bugs
↓
Automação de cenários críticos com Cypress
↓
Expansão gradual da cobertura automatizada

---

🌱 Próximos passos

Entre as evoluções planejadas para o projeto estão:

- ampliar a cobertura de testes automatizados
- automatizar novos fluxos do ParaBank
- melhorar a organização da cobertura de testes
- explorar integração com pipelines de CI/CD

---

Este projeto representa um ambiente de aprendizado contínuo em engenharia de qualidade, demonstrando não apenas automação, mas também organização de processos e pensamento crítico sobre qualidade de software.