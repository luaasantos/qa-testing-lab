import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given(/que o usuário está logado no ParaBank/, () => {

    cy.visit("https://parabank.parasoft.com/parabank/index.htm")

    cy.get('input[name="username"]').type("john");

    cy.get('input[name="password"]').type("demo");

    cy.get('input[value="Log In"]').click();

    cy.contains("Accounts Overview").should("be.visible");
});
When("clica no botão Log Out", (botao) => {
    cy.contains('a, button', botao).should('be.visible').click();
});

Then("deve ser redirecionado para a página de login", () => {
    cy.url().should("include", "index.htm");
    cy.contains("Customer Login").should("be.visible");
});