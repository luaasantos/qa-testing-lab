describe('Login - ParaBank', () => {

  const url = 'https://parabank.parasoft.com'

  beforeEach(() => {
    cy.visit(url)
  })

  // -----------------------------
  // LOGIN VÁLIDO
  // -----------------------------
  it('Deve fazer login com usuário válido', () => {

    cy.get('input[name="username"]').type('john')
    cy.get('input[name="password"]').type('demo')

    cy.get('input[value="Log In"]').click()

    cy.contains('Accounts Overview')

  })

  // -----------------------------
  // SENHA INVÁLIDA
  // -----------------------------
  it('Deve mostrar erro ao usar senha inválida', () => {

    cy.get('input[name="username"]').type('john')
    cy.get('input[name="password"]').type('senhaerrada')

    cy.get('input[value="Log In"]').click()

    cy.contains('The username and password could not be verified')

  })

  // -----------------------------
  // USUÁRIO INEXISTENTE
  // -----------------------------
  it('Deve mostrar erro ao usar usuário inexistente', () => {

    cy.get('input[name="username"]').type('usuarioFake123')
    cy.get('input[name="password"]').type('qualquerSenha')

    cy.get('input[value="Log In"]').click()

    cy.contains('The username and password could not be verified')

  })

  // -----------------------------
  // CAMPOS VAZIOS
  // -----------------------------
  it('Deve mostrar erro ao tentar login com campos vazios', () => {

    cy.get('input[value="Log In"]').click()

    cy.contains('Please enter a username and password')

  })

  // -----------------------------
  // APENAS USUÁRIO
  // -----------------------------
  it('Deve mostrar erro ao preencher apenas usuário', () => {

    cy.get('input[name="username"]').type('john')

    cy.get('input[value="Log In"]').click()

    cy.contains('Please enter a username and password')

  })

  // -----------------------------
  // APENAS SENHA
  // -----------------------------
  it('Deve mostrar erro ao preencher apenas senha', () => {

    cy.get('input[name="password"]').type('demo')

    cy.get('input[value="Log In"]').click()

    cy.contains('Please enter a username and password')

  })

})