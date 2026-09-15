///<reference types="cypress" />

describe('Zadanie 15.3.1_B - FAQ overenie obsahu po kliknutí na tlačidlá', () => {
  before(() => {
    cy.visit('https://web.automationtesting.sk/');
    cy.viewport(1440, 1200);
  });

  it('Overte obsah po kliknutí na tlačidlá', () => {
    cy.get('[role="tablist"]').then(telo => {

      cy.wrap(telo).should("contain", "How to start my news business?").should("be.visible");
      cy.wrap(telo).should("contain", "What should be my license policy?").should("be.visible");
      cy.wrap(telo).should("contain", "Any discount coming soon?").should("be.visible");
      cy.wrap(telo).should("contain", "How to install and active the free plugin?").should("be.visible");
    })
    
    cy.get(".ha-accordion__item").each(nadpis =>{
      cy.wrap(nadpis).click();

      cy.get("[role='tabpanel']").should("be.visible");
    })
   
});
});