/// <reference types="cypress" />

describe('Zadanie_11.3.1_A - Nájdenie prvkov na stránkach', () => {
 
  it('Nájdi pole pre vpísanie hodnôt (input)', () => {
    cy.visit('https://the-internet.herokuapp.com/inputs');
    cy.get('input').should('exist');
  });

  it('Nájdi Close vo vyskakovacom okne', () => {
    cy.visit('https://the-internet.herokuapp.com/exit_intent'); 
    cy.get('.modal-footer p').should('exist');
  });

  it('Nájdi Fork me on githubg v pravom hornom rohu', () => {
    cy.visit('https://the-internet.herokuapp.com/floating_menu');
    cy.get('a > img').should('exist');
  });

  it('Nájdi Checkbox 1', () => {
    cy.visit('https://the-internet.herokuapp.com/checkboxes');
    cy.get('input[type="checkbox"]:nth-child(1)').should('exist');
  });

  it('Nájdi obdĺžnik', () => {
    cy.visit('https://the-internet.herokuapp.com/context_menu');   
    cy.get('#hot-spot').should('exist');
  });
});
