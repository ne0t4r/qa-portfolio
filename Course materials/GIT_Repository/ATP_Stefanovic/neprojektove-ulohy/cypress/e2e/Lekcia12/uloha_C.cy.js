///<reference types = "cypress" />

describe('Zadanie_12.3.1_C', () => {
    before('Zavretie pop-up okna', () => {
      cy.visit('https://the-internet.herokuapp.com/entry_ad')
    });   

    it("Scenar pre zavretie pop-up okna", () => {
        cy.wait(4000);
        cy.contains("Close").click();
        cy.contains("This is a modal window").should("not.be.visible"); 
    });
  });