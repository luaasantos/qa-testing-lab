import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given("que o usuario está na página de login do ParaBank", () => {
  
  cy.clearCookies();
  cy.clearLocalStorage();
  cy.visit("https://parabank.parasoft.com/parabank/index.htm")
});

When("informa um usuário {string}", (tipoUsuario) => {
  const usuarios = {
    valido: "john",
    invalido: "fakeUser"
  };

  cy.get('input[name="username"]').clear().type(usuarios[tipoUsuario]);
});

When("informa uma senha {string}", (tipoSenha) => {
  const senhas = {
    valida: "demo",
    invalida: "123"
  };

  cy.get('input[name="password"]').clear().type(senhas[tipoSenha]);
});

When("clica no botão {string}", (botao) => {
  cy.get(`input[value="${botao}"]`).click();
});

Then("deve visualizar a página Accounts", () => {
  cy.contains("Accounts Overview").should("be.visible");
});

Then("redirecionar para a página inicial", () => {
  cy.url().should("include", "overview");
});

Then("deve visualizar mensagem de erro de autenticação", () => {
  cy.contains("Could not be verified", { timeout: 5000 }).should("be.visible");

}); 

Then("deve visualizar mensagem de erro de campos obrigatórios", () => {
  cy.contains("Please enter a username and password", { timeout: 5000 }).should("be.visible");
});

