describe('02 - Products & Catalog Tests', () => {

  beforeEach(() => {
    cy.visit('https://www.saucedemo.com/');
    cy.get('[data-test="username"]').type('standard_user');
    cy.get('[data-test="password"]').type('secret_sauce');
    cy.get('[data-test="login-button"]').click();

    cy.url().should('include', '/inventory.html');
  });

  it('1. Zobrazenie správneho počtu produktov', () => {
    cy.get('.inventory_item').should('have.length', 6);
  });

  it('2. Zoradenie produktov od najlacnejšieho po najdrahší (Low to High)', () => {
    cy.get('[data-test="product-sort-container"]').select('lohi');

    cy.get('.inventory_item_name').first().should('have.text', 'Sauce Labs Onesie');
    cy.get('.inventory_item_price').first().should('have.text', '$7.99');
  });

  it('3. Zoradenie produktov podľa abecedy (Z to A)', () => {
    cy.get('[data-test="product-sort-container"]').select('za');

    cy.get('.inventory_item_name').first().should('have.text', 'Test.allTheThings() T-Shirt (Red)');
  });

  it('4. Pridanie a odobranie položky z košíka na stránke katalógu', () => {
    cy.get('.shopping_cart_badge').should('not.exist');

    cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();

    cy.get('.shopping_cart_badge').should('have.text', '1');
    cy.get('[data-test="remove-sauce-labs-backpack"]').should('be.visible');

    cy.get('[data-test="remove-sauce-labs-backpack"]').click();

    cy.get('.shopping_cart_badge').should('not.exist');
  });

  it('5. Prechod na detail produktu a návrat späť', () => {
    cy.get('.inventory_item_name').first().click();

    cy.url().should('include', '/inventory-item.html');
    cy.get('[data-test="back-to-products"]').should('be.visible');

    cy.get('[data-test="back-to-products"]').click();
    cy.url().should('include', '/inventory.html');
  });

});