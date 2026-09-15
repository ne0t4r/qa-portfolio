///<reference types = "cypress" />

describe('Zadanie_12.3.1_B', () => {
    before('Navstivit stranku', () => {
      cy.visit('http://localhost:4200/')
    });
    
    it("Scenar pre 'http://localhost:4200/'", () => {
        cy.contains("Layout").click();
        cy.contains("Stepper").click();
        cy.get(".step-content").eq(0).contains("Step content #1");
        cy.get(".step-content").eq(0).contains("next").click();
        cy.get(".step-content").eq(0).contains("Step content #2");
        cy.get(".step-content").eq(0).contains("next").click();
        cy.get(".step-content").eq(0).contains("Step content #3");
        cy.get(".step-content").eq(0).contains("next").click();
        cy.get(".step-content").eq(0).contains("Step content #4");
        
        cy.get(".step-content").eq(0).contains("prev").click();
        cy.get(".step-content").eq(0).contains("Step content #3");
        cy.get(".step-content").eq(0).contains("prev").click();
        cy.get(".step-content").eq(0).contains("Step content #2");
        cy.get(".step-content").eq(0).contains("prev").click();
        cy.get(".step-content").eq(0).contains("Step content #1");   
    });
  });