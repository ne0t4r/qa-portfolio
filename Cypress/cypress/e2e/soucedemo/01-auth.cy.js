describe('01 - Login Page Tests', () => {

  beforeEach(() => {   
    cy.visit('https://www.saucedemo.com/');
  });

  it('1. Úspešné prihlásenie so štandardným účtom (Happy Path)', () => {
    cy.get('[data-test="username"]').type('standard_user');
    cy.get('[data-test="password"]').type('secret_sauce');    
  
    cy.get('[data-test="login-button"]').click();

    cy.url().should('include', '/inventory.html');
    cy.get('.title').should('have.text', 'Products');
  });

  it('2. Zobrazenie chybovej hlášky pri zadaní nesprávneho hesla', () => {
    cy.get('[data-test="username"]').type('standard_user');
    cy.get('[data-test="password"]').type('wrong_password');
    cy.get('[data-test="login-button"]').click();
  
    cy.get('[data-test="error"]')
      .should('be.visible')
      .and('contain', 'Username and password do not match');
  });

  it('3. Zobrazenie chybovej hlášky pre zablokovaného používateľa', () => {
    cy.get('[data-test="username"]').type('locked_out_user');
    cy.get('[data-test="password"]').type('secret_sauce');
    cy.get('[data-test="login-button"]').click();

    cy.get('[data-test="error"]')
      .should('be.visible')
      .and('contain', 'Sorry, this user has been locked out.');
  });

  it('4. Validácia povinných polí (odoslanie prázdneho formulára)', () => {
    cy.get('[data-test="login-button"]').click();

    cy.get('[data-test="error"]')
      .should('be.visible')
      .and('contain', 'Username is required');
  });

});