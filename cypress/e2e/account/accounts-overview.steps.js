Feature: Extrato

    Como usuário do sistema
    Quero realizar a consula do extrato
    Para acessar funcionalidades do extrato

Scenario: Consultar Extrato geral
   Given que o usuário está na página de extrato
   When quando acessar o extrato geral da conta
   And seleciona visualizar valor
   Then deve exibir o extrato geral do usuário

Scenario: Consultar Extrato Entrada 
   Given que o usuário está na página de extrato
   When quando acessar o extrato de entrada da conta
   And selecionar visualizar o valor
   Then deve exibir o extrato de entrada do usuário

Scenario: Consultarr Extrato Saida
   Given que o usuário está na página de extrato 
   When acessar o extrato de saida da conta
   And selecionar visualizar valor
   Then deve exibir o extrato de saida da conta

Scenario: Consultar Comprovante
   Given que o usuário está na página de extrato
   When acessar a consulta de comprovantes
   Then deve exibir os comprovantes de pagamentos

Scenario: Consultar Extrato Por periodo de 15 dias 
  Given que o usuário está na página de extrato
  When acessar a consulta de extrato
  And selecionar por periodo de 15 dias
  And confirmar o filtro
  Then deve exibir o extrato por periodo de 15 dias

Scenario: Consultar Extrato Por periodo de 30 dias 
   Given que o usuário está na página de extrato
   When acessar a consulta de extrato
   And selecionar por periodo de 30 dias
   And confirmar o filtro
   Then deve exibir o extrato por periodo de 30 dias

Scenario: Consultar Extrato Por periodo de 60 dias 
   Given que o usuário está na página de extrato
   When acessar a consulta de extrato
   And selecionar por periodo de 60 dias
   And confirmar o filtro
   Then deve exibir o extrato por periodo de 60 dias

Scenario: Consultar Extrato Por periodo de 90 dias 
   Given que o usuário está na página de extrato
   When acessar a consulta de extrato
   And selecionar por periodo de 90 dias
   And confirmar o filtro
   Then deve exibir o extrato por periodo de 90 dias

Scenario: Exportar Extrato Via PDF
   Given que o usuário está na página de extrato
   When acessar a consulta de extrato
   And selecionar exportar extrato via PDF
   And confirmar a exportação
   Then deve fazer o donwload do extrato via PDF
   And exibir uma mensagem, informando que o extrato foi baixado

Scenario: Exportar Extrato Via XLSX
    Given que o usuário está na página de extrato
    When acessar a consulta de extrato
    And selecionar exportar extrato via XLSX
    And confirmar a exportação
    Then deve fazer o donwload do extrato via XLSX
    And exibir uma mensagem, informando que o extrato foi baixado

Scenario: Exportar Extrato Via CSV
    Given que o usuário está na página de extrato
    When acessar a consulta de extrato
    And selecionar exportar extrato via CSV
    And confirmar a exportação
    Then deve fazer o donwload do extrato via CSV
    And exibir uma mensagem, informando que o extrato foi baixado




