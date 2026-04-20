import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given("que o usuario está na página de login do ParaBank", () => {

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

Then("deve visualizar mensagem de erro", () => {
  cy.contains("The username and password could not be verified.").should("be.visible");
}); 
