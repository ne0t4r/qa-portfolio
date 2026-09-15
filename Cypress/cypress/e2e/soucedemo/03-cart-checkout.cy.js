describe('03 - Cart & Checkout End-to-End Tests', () => {

  beforeEach(() => {
    cy.visit('https://www.saucedemo.com/');
    cy.get('[data-test="username"]').type('standard_user');
    cy.get('[data-test="password"]').type('secret_sauce');
    cy.get('[data-test="login-button"]').click();
  });

  it('1. Úspešné dokončenie celej objednávky (Happy Path)', () => {
    cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();
    cy.get('[data-test="add-to-cart-sauce-labs-bike-light"]').click();
    cy.get('.shopping_cart_badge').should('have.text', '2');

    cy.get('.shopping_cart_link').click();
    cy.url().should('include', '/cart.html');
    cy.get('.cart_item').should('have.length', 2);

    cy.get('[data-test="checkout"]').click();
    cy.url().should('include', '/checkout-step-one.html');

    cy.get('[data-test="firstName"]').type('Ján');
    cy.get('[data-test="lastName"]').type('Novák');
    cy.get('[data-test="postalCode"]').type('04001');
    cy.get('[data-test="continue"]').click();

    cy.url().should('include', '/checkout-step-two.html');
    cy.get('.cart_item').should('have.length', 2);

    cy.get('.summary_subtotal_label').should('contain', '$39.98'); // 29.99 + 9.99
    cy.get('.summary_tax_label').should('contain', '$3.20');
    cy.get('.summary_total_label').should('contain', '$43.18');

    cy.get('[data-test="finish"]').click();

    cy.url().should('include', '/checkout-complete.html');
    cy.get('.complete-header').should('have.text', 'Thank you for your order!');
  });

  it('2. Validácia chýbajúcich údajov v pokladni (Negative Test)', () => {
    cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();
    cy.get('.shopping_cart_link').click();
    cy.get('[data-test="checkout"]').click();

    cy.get('[data-test="continue"]').click();

    cy.get('[data-test="error"]')
      .should('be.visible')
      .and('contain', 'Error: First Name is required');
  });

  it('3. Odobranie položky priamo z košíka', () => {
    cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();
    cy.get('.shopping_cart_link').click();

    cy.get('[data-test="remove-sauce-labs-backpack"]').click();

    cy.get('.cart_item').should('not.exist');
  });

});