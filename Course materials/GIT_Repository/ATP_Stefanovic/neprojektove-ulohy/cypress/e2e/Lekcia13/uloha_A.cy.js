///<reference types = "cypress" />

describe('Zadanie_13.3.1_A práca s formulárom, hover', () => {
  before('Testovanie "Multi Step Form"', () => {
    cy.visit('https://web.automationtesting.sk/')
    cy.viewport(1440, 1200);
  });   

  it('Scenar pre "Multi Step Form"', () => {
      cy.contains("Multi Step Form").click();
      cy.get("#msf-text-your-name").type("Lukáš Štefanovič");
      cy.get("#msf-mail-your-email").type("tester.stefanovic@gmail.com");
      cy.get("#msf-date-select-date-of-order").type("2023-10-18");
      cy.get("#fw-1-0-0-3-1").check({force: true});
      cy.get(".fw-button-next").click();
      
      cy.get("#fw-1-1-0-0-6").check({force: true});
      cy.get("#fw-1-1-0-0-2").check({force: true});
      cy.get(".select2-selection").click({force: true})
      cy.get('.select2-results__options').click('top');    
     
      cy.get(".fw-button-next").click();
      cy.get(".fw-textarea").type("Toto je testovací hárok");
      
      cy.get(".fw-btn-submit").click();
      cy.wait(6000);
      cy.contains("Form submitted. Amazing").should("be.visible");

      



     
   

      
  });
});