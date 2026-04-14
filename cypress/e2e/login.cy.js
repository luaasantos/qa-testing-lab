describe('Login - ParaBank', () => {


  beforeEach(() => {
    cy.clearCookies()
    cy.clearLocalStorage()

    cy.visit('https://parabank.parasoft.com/parabank/logout.htm')
    cy.visit('https://parabank.parasoft.com/parabank/index.htm')
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
  // USUÁRIO INEXISTENTE
  // -----------------------------
  it('Deve evidenciar comportamento inesperado no login com dados inválidas', () => {

    cy.get('input[name="username"]').type('usuario_fake')
    cy.get('input[name="password"]').type('123456')

    cy.get('input[value="Log In"]').click()

    cy.url().then((url) => {
      cy.log('Resultado atual do sistema:', url)
    })

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